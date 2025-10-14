import sbt._

object Dependencies {
  lazy val zioVersion = "2.1.21"
  lazy val scalatest = "org.scalatest" %% "scalatest" % "3.2.19"
  lazy val zio = "dev.zio" %% "zio" % zioVersion
  lazy val zioTest = "dev.zio" %% "zio-test" % zioVersion % Test
  lazy val zioTestSbt = "dev.zio" %% "zio-test-sbt" % zioVersion % Test
  lazy val zioTestMagnolia = "dev.zio" %% "zio-test-magnolia" % zioVersion % Test
}
