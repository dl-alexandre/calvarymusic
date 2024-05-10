import Leaf
import Vapor

public func configure(_ app: Application) async throws {
 let file = FileMiddleware(publicDirectory: app.directory.publicDirectory)
 app.middleware.use(file)
 app.views.use(.leaf)
 app.leaf.tags["songURL"] = SongURLTag()
 app.leaf.tags["songTitle"] = SongTitleTag()
 app.leaf.tags["songTitleWithSpaces"] = SongTitleWithSpacesTag()
 app.routes.defaultMaxBodySize = "11mb"
 app.routes.caseInsensitive = true
 app.http.server.configuration.port = 8081
 
 switch app.environment {
  case .production:
   app.http.server.configuration.hostname = "0.0.0.0"
  default: break
   
 }

 try routes(app)
}
