package example.services

import example.model.{Config, Order, User}
import zio.{ZIO, ZLayer}

object OrderService {
  def fetchOrder(userId: Int): ZIO[Any, Exception, List[Order]] = {
    //Checking for if the order is good.
    if (userId <= 0) ZIO.fail(new Exception(s"Bad user id:$userId."))
    else ZIO.succeed(List(Order(101, 19.99),  Order(102, 45.02)))
  }

  val layer = ZLayer.fromZIO(ZIO.service[Config].map(new OrderServiceLive(_)))
}

trait OrderService {
  def getOrderByUserId(id: Int): ZIO[Any, Exception, List[Order]]
}

class OrderServiceLive(config: Config) extends OrderService {
  override def getOrderByUserId(id: Int): ZIO[Any, Exception, List[Order]] = {
    zio.Console.printLine(s"OrderService asking for orders for user: $id - with config:${config.url}").orDie *> OrderService.fetchOrder(id)
  }
}