package example.model

import zio.ZLayer

case class Config(url:String)

object Config {
  val layer = ZLayer.succeed(Config(url = "http://test.com"))
}
