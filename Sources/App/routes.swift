import Vapor

func routes(_ app: Application) throws {
 app.get { req -> EventLoopFuture<View> in
  return req.view.render("home", WelcomeContext(title: "Welcome"))
 }
 
 app.get("account") { req -> EventLoopFuture<View> in
  return req.view.render("account", WelcomeContext(title: "Account"))
 }
 
 app.get("stephenethridge", "yourdisciple") { req -> EventLoopFuture<View> in
  return req.view.render("audio")
 }
 
 app.get("play") { req -> Response in
  let audioFilePath = app.directory.publicDirectory + "/Left Hand Cramps.m4a"
//  let songID = req.parameters.get("songID")!
  return req.fileio.streamFile(at: audioFilePath)
 }
}

struct WelcomeContext: Encodable {
 var title: String
}
