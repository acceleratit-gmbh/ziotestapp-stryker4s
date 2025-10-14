# ZIO Test app


This is meant to show a test app. This is a sample that can be used as a base.

Errors from `sbt stryker4s`

Output:

```bash
[info] welcome to sbt 1.11.0 (Eclipse Adoptium Java 21.0.4)
[info] loading settings for project zio-testapp-striker4s-build from plugins.sbt...
[info] loading project definition from /home/username/projects/zio-testapp-striker4s/project
[info] loading settings for project root from build.sbt...
[info] set current project to Scala Seed Project (in build file:/home/username/projects/zio-testapp-striker4s/)
[info] Loading config. Read how to configure Stryker4s here: https://stryker-mutator.io/docs/stryker4s/configuration/
[info] Found 6 file(s) to be mutated.
[info] 18 mutant(s) generated.
[info] Setting up mutated environment...
[info] set current project to Scala Seed Project (in build file:/home/username/projects/zio-testapp-striker4s/)
[info] compiling 6 Scala sources to /home/username/projects/zio-testapp-striker4s/target/scala-2.13/classes ...
[info] scoverage excludedSymbols: List(scala.reflect.api.Exprs.Expr, scala.reflect.api.Trees.Tree, scala.reflect.macros.Universe.Tree)
[info] Cleaning datadir [/home/username/projects/zio-testapp-striker4s/target/scala-2.13/scoverage-data]
[info] Beginning coverage instrumentation
[info] Instrumentation completed [211 statements]
[info] Wrote instrumentation file [/home/username/projects/zio-testapp-striker4s/target/scala-2.13/scoverage-data/scoverage.coverage]
[info] Will write measurement data to [/home/username/projects/zio-testapp-striker4s/target/scala-2.13/scoverage-data]
[warn] 1 deprecation (since 2.1.20); re-run with -deprecation for details
[warn] one warning found
[info] done compiling
[info] compiling 3 Scala sources to /home/username/projects/zio-testapp-striker4s/target/scala-2.13/test-classes ...
[info] done compiling
[info] Creating 7 test-runners
[info] Starting initial test run...
[info] Timeout set to 5 seconds and 223 milliseconds (net 149 milliseconds)
[info] Initial test run succeeded! Testing mutants...
[info] 5 mutant(s) detected as having no code coverage. They will be skipped and marked as NoCoverage
java.io.IOException: Stream closed
	at java.base/java.io.BufferedInputStream.getBufIfOpen(BufferedInputStream.java:188)
	at java.base/java.io.BufferedInputStream.read1(BufferedInputStream.java:343)
	at java.base/java.io.BufferedInputStream.implRead(BufferedInputStream.java:420)
	at java.base/java.io.BufferedInputStream.read(BufferedInputStream.java:405)
	at fs2.io.package$.$anonfun$readInputStreamCancelable$3(io.scala:60)
	at blocking @ fs2.io.file.FilesCompanionPlatform$AsyncFiles.open(FilesPlatform.scala:323)
[info] Tested mutant 1/13 (8%)
java.io.IOException: Stream closed
	at java.base/java.io.BufferedInputStream.getBufIfOpen(BufferedInputStream.java:188)
	at java.base/java.io.BufferedInputStream.read1(BufferedInputStream.java:343)
	at java.base/java.io.BufferedInputStream.implRead(BufferedInputStream.java:420)
	at java.base/java.io.BufferedInputStream.read(BufferedInputStream.java:405)
	at fs2.io.package$.$anonfun$readInputStreamCancelable$3(io.scala:60)
	at blocking @ fs2.io.file.FilesCompanionPlatform$AsyncFiles.open(FilesPlatform.scala:323)
java.io.IOException: Stream closed
	at java.base/java.io.BufferedInputStream.getBufIfOpen(BufferedInputStream.java:188)
	at java.base/java.io.BufferedInputStream.read1(BufferedInputStream.java:343)
	at java.base/java.io.BufferedInputStream.implRead(BufferedInputStream.java:420)
	at java.base/java.io.BufferedInputStream.read(BufferedInputStream.java:405)
	at fs2.io.package$.$anonfun$readInputStreamCancelable$3(io.scala:60)
	at blocking @ fs2.io.file.FilesCompanionPlatform$AsyncFiles.open(FilesPlatform.scala:323)
java.io.IOException: Stream closed
	at java.base/java.io.BufferedInputStream.getBufIfOpen(BufferedInputStream.java:188)
	at java.base/java.io.BufferedInputStream.read1(BufferedInputStream.java:343)
	at java.base/java.io.BufferedInputStream.implRead(BufferedInputStream.java:420)
	at java.base/java.io.BufferedInputStream.read(BufferedInputStream.java:405)
	at fs2.io.package$.$anonfun$readInputStreamCancelable$3(io.scala:60)
	at blocking @ fs2.io.file.FilesCompanionPlatform$AsyncFiles.open(FilesPlatform.scala:323)
java.io.IOException: Stream closed
	at java.base/java.io.BufferedInputStream.getBufIfOpen(BufferedInputStream.java:188)
	at java.base/java.io.BufferedInputStream.read1(BufferedInputStream.java:343)
	at java.base/java.io.BufferedInputStream.implRead(BufferedInputStream.java:420)
	at java.base/java.io.BufferedInputStream.read(BufferedInputStream.java:405)
	at fs2.io.package$.$anonfun$readInputStreamCancelable$3(io.scala:60)
	at blocking @ fs2.io.file.FilesCompanionPlatform$AsyncFiles.open(FilesPlatform.scala:323)
java.io.IOException: Stream closed
	at java.base/java.io.BufferedInputStream.getBufIfOpen(BufferedInputStream.java:188)
	at java.base/java.io.BufferedInputStream.read1(BufferedInputStream.java:343)
	at java.base/java.io.BufferedInputStream.implRead(BufferedInputStream.java:420)
	at java.base/java.io.BufferedInputStream.read(BufferedInputStream.java:405)
	at fs2.io.package$.$anonfun$readInputStreamCancelable$3(io.scala:60)
	at blocking @ fs2.io.file.FilesCompanionPlatform$AsyncFiles.open(FilesPlatform.scala:323)
java.io.IOException: Stream closed
	at java.base/java.io.BufferedInputStream.getBufIfOpen(BufferedInputStream.java:188)
	at java.base/java.io.BufferedInputStream.read1(BufferedInputStream.java:343)
	at java.base/java.io.BufferedInputStream.implRead(BufferedInputStream.java:420)
	at java.base/java.io.BufferedInputStream.read(BufferedInputStream.java:405)
	at fs2.io.package$.$anonfun$readInputStreamCancelable$3(io.scala:60)
	at blocking @ fs2.io.file.FilesCompanionPlatform$AsyncFiles.open(FilesPlatform.scala:323)
[info] Tested mutant 4/13 (31%)
java.io.IOException: Stream closed
	at java.base/java.io.BufferedInputStream.getBufIfOpen(BufferedInputStream.java:188)
	at java.base/java.io.BufferedInputStream.read1(BufferedInputStream.java:343)
	at java.base/java.io.BufferedInputStream.implRead(BufferedInputStream.java:420)
	at java.base/java.io.BufferedInputStream.read(BufferedInputStream.java:405)
	at fs2.io.package$.$anonfun$readInputStreamCancelable$3(io.scala:60)
	at blocking @ fs2.io.file.FilesCompanionPlatform$AsyncFiles.open(FilesPlatform.scala:323)
java.io.IOException: Stream closed
	at java.base/java.io.BufferedInputStream.getBufIfOpen(BufferedInputStream.java:188)
	at java.base/java.io.BufferedInputStream.read1(BufferedInputStream.java:343)
	at java.base/java.io.BufferedInputStream.implRead(BufferedInputStream.java:420)
	at java.base/java.io.BufferedInputStream.read(BufferedInputStream.java:405)
	at fs2.io.package$.$anonfun$readInputStreamCancelable$3(io.scala:60)
	at blocking @ fs2.io.file.FilesCompanionPlatform$AsyncFiles.open(FilesPlatform.scala:323)
java.io.IOException: Stream closed
	at java.base/java.io.BufferedInputStream.getBufIfOpen(BufferedInputStream.java:188)
	at java.base/java.io.BufferedInputStream.read1(BufferedInputStream.java:343)
	at java.base/java.io.BufferedInputStream.implRead(BufferedInputStream.java:420)
	at java.base/java.io.BufferedInputStream.read(BufferedInputStream.java:405)
	at fs2.io.package$.$anonfun$readInputStreamCancelable$3(io.scala:60)
	at blocking @ fs2.io.file.FilesCompanionPlatform$AsyncFiles.open(FilesPlatform.scala:323)
java.io.IOException: Stream closed
	at java.base/java.io.BufferedInputStream.getBufIfOpen(BufferedInputStream.java:188)
	at java.base/java.io.BufferedInputStream.read1(BufferedInputStream.java:343)
	at java.base/java.io.BufferedInputStream.implRead(BufferedInputStream.java:420)
	at java.base/java.io.BufferedInputStream.read(BufferedInputStream.java:405)
	at fs2.io.package$.$anonfun$readInputStreamCancelable$3(io.scala:60)
	at blocking @ fs2.io.file.FilesCompanionPlatform$AsyncFiles.open(FilesPlatform.scala:323)
java.io.IOException: Stream closed
	at java.base/java.io.BufferedInputStream.getBufIfOpen(BufferedInputStream.java:188)
	at java.base/java.io.BufferedInputStream.read1(BufferedInputStream.java:343)
	at java.base/java.io.BufferedInputStream.implRead(BufferedInputStream.java:420)
	at java.base/java.io.BufferedInputStream.read(BufferedInputStream.java:405)
	at fs2.io.package$.$anonfun$readInputStreamCancelable$3(io.scala:60)
	at blocking @ fs2.io.file.FilesCompanionPlatform$AsyncFiles.open(FilesPlatform.scala:323)
java.io.IOException: Stream closed
	at java.base/java.io.BufferedInputStream.getBufIfOpen(BufferedInputStream.java:188)
	at java.base/java.io.BufferedInputStream.read1(BufferedInputStream.java:343)
	at java.base/java.io.BufferedInputStream.implRead(BufferedInputStream.java:420)
	at java.base/java.io.BufferedInputStream.read(BufferedInputStream.java:405)
	at fs2.io.package$.$anonfun$readInputStreamCancelable$3(io.scala:60)
	at blocking @ fs2.io.file.FilesCompanionPlatform$AsyncFiles.open(FilesPlatform.scala:323)
java.io.IOException: Stream closed
	at java.base/java.io.BufferedInputStream.getBufIfOpen(BufferedInputStream.java:188)
	at java.base/java.io.BufferedInputStream.read1(BufferedInputStream.java:343)
	at java.base/java.io.BufferedInputStream.implRead(BufferedInputStream.java:420)
	at java.base/java.io.BufferedInputStream.read(BufferedInputStream.java:405)
	at fs2.io.package$.$anonfun$readInputStreamCancelable$3(io.scala:60)
	at blocking @ fs2.io.file.FilesCompanionPlatform$AsyncFiles.open(FilesPlatform.scala:323)
java.io.IOException: Stream closed
	at java.base/java.io.BufferedInputStream.ensureOpen(BufferedInputStream.java:206)
	at java.base/java.io.BufferedInputStream.implRead(BufferedInputStream.java:411)
	at java.base/java.io.BufferedInputStream.read(BufferedInputStream.java:405)
	at fs2.io.package$.$anonfun$readInputStreamCancelable$3(io.scala:60)
	at blocking @ fs2.io.file.FilesCompanionPlatform$AsyncFiles.open(FilesPlatform.scala:323)
java.io.IOException: Stream closed
	at java.base/java.io.BufferedInputStream.getBufIfOpen(BufferedInputStream.java:188)
	at java.base/java.io.BufferedInputStream.read1(BufferedInputStream.java:343)
	at java.base/java.io.BufferedInputStream.implRead(BufferedInputStream.java:420)
	at java.base/java.io.BufferedInputStream.read(BufferedInputStream.java:405)
	at fs2.io.package$.$anonfun$readInputStreamCancelable$3(io.scala:60)
	at blocking @ fs2.io.file.FilesCompanionPlatform$AsyncFiles.open(FilesPlatform.scala:323)
java.io.IOException: Stream closed
	at java.base/java.io.BufferedInputStream.getBufIfOpen(BufferedInputStream.java:188)
	at java.base/java.io.BufferedInputStream.read1(BufferedInputStream.java:343)
	at java.base/java.io.BufferedInputStream.implRead(BufferedInputStream.java:420)
	at java.base/java.io.BufferedInputStream.read(BufferedInputStream.java:405)
	at fs2.io.package$.$anonfun$readInputStreamCancelable$3(io.scala:60)
	at blocking @ fs2.io.file.FilesCompanionPlatform$AsyncFiles.open(FilesPlatform.scala:323)
java.io.IOException: Stream closed
	at java.base/java.io.BufferedInputStream.getBufIfOpen(BufferedInputStream.java:188)
	at java.base/java.io.BufferedInputStream.read1(BufferedInputStream.java:343)
	at java.base/java.io.BufferedInputStream.implRead(BufferedInputStream.java:420)
	at java.base/java.io.BufferedInputStream.read(BufferedInputStream.java:405)
	at fs2.io.package$.$anonfun$readInputStreamCancelable$3(io.scala:60)
	at blocking @ fs2.io.file.FilesCompanionPlatform$AsyncFiles.open(FilesPlatform.scala:323)
java.io.IOException: Stream closed
	at java.base/java.io.BufferedInputStream.getBufIfOpen(BufferedInputStream.java:188)
	at java.base/java.io.BufferedInputStream.read1(BufferedInputStream.java:343)
	at java.base/java.io.BufferedInputStream.implRead(BufferedInputStream.java:420)
	at java.base/java.io.BufferedInputStream.read(BufferedInputStream.java:405)
	at fs2.io.package$.$anonfun$readInputStreamCancelable$3(io.scala:60)
	at blocking @ fs2.io.file.FilesCompanionPlatform$AsyncFiles.open(FilesPlatform.scala:323)
java.io.IOException: Stream closed
	at java.base/java.io.BufferedInputStream.getBufIfOpen(BufferedInputStream.java:188)
	at java.base/java.io.BufferedInputStream.read1(BufferedInputStream.java:343)
	at java.base/java.io.BufferedInputStream.implRead(BufferedInputStream.java:420)
	at java.base/java.io.BufferedInputStream.read(BufferedInputStream.java:405)
	at fs2.io.package$.$anonfun$readInputStreamCancelable$3(io.scala:60)
	at blocking @ fs2.io.file.FilesCompanionPlatform$AsyncFiles.open(FilesPlatform.scala:323)
[info] Tested mutant 12/13 (92%)
java.io.IOException: Stream closed
	at java.base/java.io.BufferedInputStream.getBufIfOpen(BufferedInputStream.java:188)
	at java.base/java.io.BufferedInputStream.read1(BufferedInputStream.java:343)
	at java.base/java.io.BufferedInputStream.implRead(BufferedInputStream.java:420)
	at java.base/java.io.BufferedInputStream.read(BufferedInputStream.java:405)
	at fs2.io.package$.$anonfun$readInputStreamCancelable$3(io.scala:60)
	at blocking @ fs2.io.file.FilesCompanionPlatform$AsyncFiles.open(FilesPlatform.scala:323)
java.io.IOException: Stream closed
	at java.base/java.io.BufferedInputStream.getBufIfOpen(BufferedInputStream.java:188)
	at java.base/java.io.BufferedInputStream.read1(BufferedInputStream.java:343)
	at java.base/java.io.BufferedInputStream.implRead(BufferedInputStream.java:420)
	at java.base/java.io.BufferedInputStream.read(BufferedInputStream.java:405)
	at fs2.io.package$.$anonfun$readInputStreamCancelable$3(io.scala:60)
	at blocking @ fs2.io.file.FilesCompanionPlatform$AsyncFiles.open(FilesPlatform.scala:323)
java.io.IOException: Stream closed
	at java.base/java.io.BufferedInputStream.getBufIfOpen(BufferedInputStream.java:188)
	at java.base/java.io.BufferedInputStream.read1(BufferedInputStream.java:343)
	at java.base/java.io.BufferedInputStream.implRead(BufferedInputStream.java:420)
	at java.base/java.io.BufferedInputStream.read(BufferedInputStream.java:405)
	at fs2.io.package$.$anonfun$readInputStreamCancelable$3(io.scala:60)
	at blocking @ fs2.io.file.FilesCompanionPlatform$AsyncFiles.open(FilesPlatform.scala:323)
java.io.IOException: Stream closed
	at java.base/java.io.BufferedInputStream.getBufIfOpen(BufferedInputStream.java:188)
	at java.base/java.io.BufferedInputStream.read1(BufferedInputStream.java:343)
	at java.base/java.io.BufferedInputStream.implRead(BufferedInputStream.java:420)
	at java.base/java.io.BufferedInputStream.read(BufferedInputStream.java:405)
	at fs2.io.package$.$anonfun$readInputStreamCancelable$3(io.scala:60)
	at blocking @ fs2.io.file.FilesCompanionPlatform$AsyncFiles.open(FilesPlatform.scala:323)
java.io.IOException: Stream closed
	at java.base/java.io.BufferedInputStream.getBufIfOpen(BufferedInputStream.java:188)
	at java.base/java.io.BufferedInputStream.read1(BufferedInputStream.java:343)
	at java.base/java.io.BufferedInputStream.implRead(BufferedInputStream.java:420)
	at java.base/java.io.BufferedInputStream.read(BufferedInputStream.java:405)
	at fs2.io.package$.$anonfun$readInputStreamCancelable$3(io.scala:60)
	at blocking @ fs2.io.file.FilesCompanionPlatform$AsyncFiles.open(FilesPlatform.scala:323)
java.io.IOException: Stream closed
	at java.base/java.io.BufferedInputStream.getBufIfOpen(BufferedInputStream.java:188)
	at java.base/java.io.BufferedInputStream.read1(BufferedInputStream.java:343)
	at java.base/java.io.BufferedInputStream.implRead(BufferedInputStream.java:420)
	at java.base/java.io.BufferedInputStream.read(BufferedInputStream.java:405)
	at fs2.io.package$.$anonfun$readInputStreamCancelable$3(io.scala:60)
	at blocking @ fs2.io.file.FilesCompanionPlatform$AsyncFiles.open(FilesPlatform.scala:323)
java.io.IOException: Stream closed
	at java.base/java.io.BufferedInputStream.getBufIfOpen(BufferedInputStream.java:188)
	at java.base/java.io.BufferedInputStream.read1(BufferedInputStream.java:343)
	at java.base/java.io.BufferedInputStream.implRead(BufferedInputStream.java:420)
	at java.base/java.io.BufferedInputStream.read(BufferedInputStream.java:405)
	at fs2.io.package$.$anonfun$readInputStreamCancelable$3(io.scala:60)
	at blocking @ fs2.io.file.FilesCompanionPlatform$AsyncFiles.open(FilesPlatform.scala:323)
[info] Mutation run finished! Took 3 seconds and 320 milliseconds
[info] Total mutants: 18, detected: 2, undetected: 9
[info] Written HTML report to /home/username/projects/zio-testapp-striker4s/target/stryker4s-report/1760405133393/index.html
[info] Undetected mutants:
[info] 12. [Survived] [StringLiteral]
[info] src/main/scala/example/services/UserService.scala:9:41
[info] -	"User not found"
[info] +	""
[info] 
[info] 14. [NoCoverage] [StringLiteral]
[info] src/main/scala/example/services/UserService.scala:25:27
[info] -	s"Fetching user $id from ${config.url}"
[info] +	""
[info] 
[info] 15. [NoCoverage] [StringLiteral]
[info] src/main/scala/example/Hello.scala:8:19
[info] -	"hello"
[info] +	""
[info] 
[info] 16. [NoCoverage] [StringLiteral]
[info] src/main/scala/example/Hello.scala:29:13
[info] -	s"${user.name} has ${orders.size} orders totalling $$${total}"
[info] +	""
[info] 
[info] 17. [NoCoverage] [StringLiteral]
[info] src/main/scala/example/model/Config.scala:8:43
[info] -	"http://test.com"
[info] +	""
[info] 
[info] 2. [Survived] [EqualityOperator]
[info] src/main/scala/example/services/OrderService.scala:9:16
[info] -	<=
[info] +	<
[info] 
[info] 5. [Survived] [StringLiteral]
[info] src/main/scala/example/services/OrderService.scala:9:45
[info] -	s"Bad user id:$userId."
[info] +	""
[info] 
[info] 6. [NoCoverage] [StringLiteral]
[info] src/main/scala/example/services/OrderService.scala:22:27
[info] -	s"OrderService asking for orders for user: $id - with config:${config.url}"
[info] +	""
[info] 
[info] 9. [Survived] [EqualityOperator]
[info] src/main/scala/example/services/UserService.scala:9:12
[info] -	<=
[info] +	<
[error] Mutation score dangerously low!
[error] Mutation score: 18.18% (of total), 33.33% (of covered code)
[success] Total time: 9 s, completed Oct 13, 2025, 8:25:33 PM

```
