import Vapor

func routes(_ app: Application) throws {
 app.get { req -> EventLoopFuture<View> in
  return req.view.render("home", Context(title: "Welcome", song: Song()))
 }.description("Homepage of CalvaryMusic")
 
 app.get("account") { req -> EventLoopFuture<View> in
  return req.view.render("account", Context(title: "Account"))
 }.description("Allows User To View Account")
 
 app.get("\(Song().artist.replacingOccurrences(of: " ", with: ""))", "\(Song().titleString)") { req -> EventLoopFuture<View> in
  return req.view.render("audio", Context(song: Song()))
 }
 
 app.get("play") { req -> Response in
  let audioFilePath = app.directory.publicDirectory + "/Left Hand Cramps.m4a"
//  let songID = req.parameters.get("songID")!
  return req.fileio.streamFile(at: audioFilePath)
 }
}
