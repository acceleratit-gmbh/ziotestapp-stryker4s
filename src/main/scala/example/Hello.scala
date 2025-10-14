package example

import example.services.{OrderService, UserService}
import zio._

object Hello extends ZIOAppDefault {

  def testHello = "hello"

  override def run: ZIO[Any with ZIOAppArgs with Scope, Any, Any] = {
    val program = for {
      summary <- getUserOrdersSequential(5)
      _ <- Console.printLine(summary)
      _ <- ZIO.succeed(ExitCode.success)
    } yield ()

    program.provide(
      model.Config.layer,
      UserService.layer,
      OrderService.layer
    ).exitCode
  }

  def getUserOrdersSequential(userId: Int): ZIO[UserService with OrderService, Exception, String] = {
    for {
      user <- ZIO.serviceWithZIO[UserService](_.getUserById(userId))
      orders <- ZIO.serviceWithZIO[OrderService](_.getOrderByUserId(userId))
      total = orders.map(_.amount).sum
    } yield s"${user.name} has ${orders.size} orders totalling $$${total}"
  }
}