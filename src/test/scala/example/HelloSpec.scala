package example

import org.scalatest.funspec.AnyFunSpec
import org.scalatest.matchers.should.Matchers

class HelloSpec extends AnyFunSpec with Matchers {
  describe("Greeting") {
    it("Should pass") {
      1 should be(1)
    }
  }
}
