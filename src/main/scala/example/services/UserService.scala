package example.services

import example.model.{Config, User}
import zio.{ZIO, ZLayer}

object UserService {

  def fetchUser(id: Int): ZIO[Any, Exception, User] = {
    if (id <= 0) ZIO.fail(new Exception("User not found"))
    else ZIO.succeed(User(id, s"UserName:$id"))
  }

  val layer: ZLayer[Config, Nothing, UserServiceLive] = ZLayer.fromZIO(ZIO.service[Config].map(new UserServiceLive(_)))
}


trait UserService {
  def getUserById(id: Int): ZIO[Any, Exception, User]
}


class UserServiceLive(config: Config) extends UserService {

  override def getUserById(id: Int): ZIO[Any, Exception, User] = {
    zio.Console.printLine(s"Fetching user $id from ${config.url}").orDie *>
      UserService.fetchUser(id)
  }
}