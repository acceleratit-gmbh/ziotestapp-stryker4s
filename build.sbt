import Dependencies.*

scalaVersion := "2.13.18"

//  "dev.zio" %% "zio" % "2.1.1",

ThisBuild / scalaVersion := "2.13.18"
ThisBuild / version := "0.1.0-SNAPSHOT"
ThisBuild / organization := "com.example"
ThisBuild / organizationName := "example"
lazy val zioVersion = "2.1.1"

lazy val root = (project in file("."))
  .settings(
    name := "Scala Seed Project",
    libraryDependencies ++= Seq(
      scalatest % Test,
      zio, zioTest, zioTestSbt, zioTestMagnolia
    ),
    resolvers += "Artima Maven Repository" at "https://repo.artima.com/releases",
    // coverageEnabled := true,
    Test / testOptions += Tests.Argument(TestFrameworks.ScalaTest, "-u", "target/test-reports"),
    Test / testFrameworks += new TestFramework("zio.test.junit.ZTestJUnitFramework"),
    Test / testOptions += Tests.Argument(TestFrameworks.ZIOTest, "-u", "target/test-reports")

  )

// See https://www.scala-sbt.org/1.x/docs/Using-Sonatype.html for instructions on how to publish to Sonatype.
