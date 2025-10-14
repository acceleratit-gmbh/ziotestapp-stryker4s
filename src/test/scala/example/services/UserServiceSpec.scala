package example.services

import example.model.User
import zio.test.Assertion.{anything, equalTo, fails}
import zio.test.{ZIOSpecDefault, assertZIO}

object UserServiceSpec extends ZIOSpecDefault {
  override def spec = suite("UserServiceSpec")(
    test("fetchUser should return a User when given a positive id") {
      val result = UserService.fetchUser(1)
      assertZIO(result)(equalTo(User(1, "UserName:1")))
    },
    test("fetchUser should return a failure when given a negative umber") {
      val result = UserService.fetchUser(-1).exit
      assertZIO(result)(fails(anything))
    }

  )
}
