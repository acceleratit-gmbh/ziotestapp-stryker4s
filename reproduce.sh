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
#                (default: 12 — amplifies the per-run hit rate on a multi-core
#                machine from ~20 % to ~90 %)
#
# Recipe variants:
#   Amplified (default, ~90 % hit rate on the reference machine):
#       ./reproduce.sh
#   Default-statistical (warm, default concurrency 5, ~20 %):
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
CONCURRENCY="${CONCURRENCY:-12}"

cpus=$(nproc 2>/dev/null || sysctl -n hw.ncpu 2>/dev/null || echo "?")

echo "=== Environment ==="
java -version 2>&1 | head -1
uname -srm
echo "Logical CPUs: $cpus"
echo "SBT_OPTS:    ${SBT_OPTS:-(unset)}"
echo
echo "=== Running $K iterations with strykerConcurrency := $CONCURRENCY ==="

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
