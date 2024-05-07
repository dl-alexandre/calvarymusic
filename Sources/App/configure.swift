import Leaf
import Vapor

 // configures your application
public func configure(_ app: Application) async throws {
  // uncomment to serve files from /Public folder
  // app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))
 let file = FileMiddleware(publicDirectory: app.directory.publicDirectory)
 app.middleware.use(file)
 app.views.use(.leaf)
 app.routes.defaultMaxBodySize = "11mb"
 switch app.environment {
  case .production:
   app.http.server.configuration.hostname = "0.0.0.0"
  default: break
   
 }
// app.http.server.configuration.hostname = "0.0.0.0"
 app.http.server.configuration.port = 8081
 print("\(app.directory.workingDirectory)")
 print("\(app.directory.publicDirectory)")
 print("\(app.directory.resourcesDirectory)")
 print(app.routes.all)
  // register routes
 try routes(app)
}
