#!/usr/bin/env bash
# Reproduction harness for stryker-mutator/stryker4s issue #1861
# https://github.com/stryker-mutator/stryker4s/issues/1861
#
# Runs `sbt stryker` K times under an amplified test-runner count and counts
# `AsynchronousCloseException` occurrences across runs. The race is flaky per
# run — interpret results statistically.
#
# Variables (env-overridable):
#   K            number of runs (default: 10)
#   CONCURRENCY  test-runner count, passed via `set strykerConcurrency`
#                (default: auto-computed for the machine; see formula below)
#
# Concurrency formula (CPU vs memory headroom):
#   CONCURRENCY = min(nproc - 4,  total_RAM_GB,  12)   floored at 2
#     nproc - 4:    headroom for sbt JVM, OS, abort capability
#     total_RAM_GB: each test-runner reserves -Xmx4G (real ~200-500 MB on
#                   small projects); 1 runner per GB is a conservative cap
#     cap 12:       diminishing returns past ~12; reference baseline at 12
#     floor 2:      need at least some parallelism for the race to occur
#   If the value lands below 8, amplification will be weak on this hardware —
#   raise K instead, or run on a larger machine.
#
# Recipe variants:
#   Amplified (default, auto-tuned for your machine):
#       ./reproduce.sh
#   Default-statistical (warm, default concurrency 5, ~20 % on reference box):
#       CONCURRENCY=5 ./reproduce.sh
#   Negative control (proves the race needs >=2 parallel cores; expect 0/K):
#       SBT_OPTS="-XX:ActiveProcessorCount=1" CONCURRENCY=5 ./reproduce.sh
#
# Output: per-run hit counts and a summary `<hits>/<K> runs reproduced`.
# Per-run logs are kept at /tmp/stryker-1861-run-*.log.

set -u

if [ ! -f project/plugins.sbt ]; then
  echo "Run this script from the repository root." >&2
  exit 1
fi

K="${K:-10}"

# Detect resources (Linux + macOS).
cpus=$(nproc 2>/dev/null || sysctl -n hw.ncpu 2>/dev/null || echo 0)
ram_gb=0
if [ -r /proc/meminfo ]; then
  total_kb=$(awk '/^MemTotal:/ {print $2}' /proc/meminfo)
  ram_gb=$((total_kb / 1024 / 1024))
elif command -v sysctl >/dev/null 2>&1; then
  total_bytes=$(sysctl -n hw.memsize 2>/dev/null || echo 0)
  ram_gb=$((total_bytes / 1024 / 1024 / 1024))
fi

# Apply formula: min(cpus - 4, ram_gb, 12), floored at 2.
auto_conc=12
cpu_budget="?"
if [ "$cpus" -gt 0 ]; then
  cpu_budget=$((cpus - 4))
  [ "$cpu_budget" -lt "$auto_conc" ] && auto_conc=$cpu_budget
fi
[ "$ram_gb" -gt 0 ] && [ "$ram_gb" -lt "$auto_conc" ] && auto_conc=$ram_gb
[ "$auto_conc" -lt 2 ] && auto_conc=2

if [ -z "${CONCURRENCY:-}" ]; then
  CONCURRENCY=$auto_conc
  conc_note=""
else
  conc_note="  (env override; formula would pick $auto_conc)"
fi

echo "=== Environment ==="
java -version 2>&1 | head -1
uname -srm
printf "Logical CPUs:  %s\n"  "${cpus:-unknown}"
printf "Total RAM:     %d GB\n" "$ram_gb"
printf "SBT_OPTS:      %s\n" "${SBT_OPTS:-(unset)}"
echo
printf "Formula:       min(nproc-4=%s, RAM_GB=%d, 12) floored at 2  =>  %d\n" \
  "$cpu_budget" "$ram_gb" "$auto_conc"
printf "Running:       %d iterations with strykerConcurrency := %d%s\n" \
  "$K" "$CONCURRENCY" "$conc_note"
if [ "$CONCURRENCY" -lt 8 ]; then
  echo "Note:          amplifier weak below ~8 runners; consider raising K"
fi
echo

hits=0
total=0
for i in $(seq 1 "$K"); do
  log="/tmp/stryker-1861-run-$i.log"
  sbt "set strykerConcurrency := $CONCURRENCY" stryker >"$log" 2>&1
  n=$(grep -c "AsynchronousCloseException" "$log" || true)
  runners=$(grep -oE "Creating [0-9]+ test-runners" "$log" | head -1)
  printf "  run %2d: AsyncClose=%d   (%s)\n" "$i" "$n" "$runners"
  [ "$n" -gt 0 ] && hits=$((hits+1))
  total=$((total+n))
done

echo
echo "=== Summary ==="
echo "$hits/$K runs reproduced; total occurrences=$total"
echo "Per-run logs: /tmp/stryker-1861-run-*.log"
