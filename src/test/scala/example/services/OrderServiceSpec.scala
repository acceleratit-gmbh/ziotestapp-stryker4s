package example.services

import example.model.Order
import zio.test.Assertion.{anything, equalTo, fails}
import zio.test.{ZIOSpecDefault, assertZIO}

object OrderServiceSpec extends ZIOSpecDefault {
  override def spec = suite("UserServiceSpec")(
    test("fetchOrder if the user id is normal") {
      val result = OrderService.fetchOrder(1)
      assertZIO(result)(equalTo(List(Order(101, 19.99), Order(102, 45.02))))
    },
    test("fetchOrder should return a failure when given a negative umber") {
      val result = OrderService.fetchOrder(-1).exit
      assertZIO(result)(fails(anything))
    }

  )
}
