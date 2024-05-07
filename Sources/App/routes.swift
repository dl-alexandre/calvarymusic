import Vapor

func routes(_ app: Application) throws {
// app.get { req async in
//           "It works!"
//       }
//    app.get { req async throws in
//        try await req.view.render("index", ["title": "Hello Vapor!"])
//    }
// app.get("hello") { req async throws -> View in
//     return try await req.view.render("hello", ["name": "Leaf"])
//    }
//
// app.get("master") { req -> EventLoopFuture<View> in
//  return req.view.render("master")
// }
// 
// app.get("index") { req -> EventLoopFuture<View> in
//  return req.view.render("index")
// }

 app.get { req -> EventLoopFuture<View> in
  return req.view.render("yourdisciple")
 }
 
// app.get("stream-file") { req -> EventLoopFuture<Response> in
//  let filePath = app.directory.publicDirectory + "/YourDisciple.m4a"
//  return req.fileio.streamFile(at: filePath) { result in
//   switch result {
//    case .success: break
//      // Handle success (e.g., log completion)
//    case .failure(let error): break
//      // Handle failure (e.g., log error)
//   }
//  }
// }
 
 app.get("stephenethridge", "yourdisciple") { req -> EventLoopFuture<View> in
  return req.view.render("audio")
 }
 
// app.get("play-audio") { req -> Response in
//  let audioFilePath = app.directory.publicDirectory + "/Left Hand Cramps.mp3" // Replace with the actual file path
//  let res = Response()
//  res.headers.add(name: .contentType, value: "audio/mpeg")
//  res.headers.add(name: .contentDisposition, value: "inline")
//  res.body = .init(stringLiteral: audioFilePath)
//  return res
// }
 
 app.get("play") { req -> Response in
  let audioFilePath = app.directory.publicDirectory + "/Left Hand Cramps.m4a"
//  let songID = req.parameters.get("songID")!
  return req.fileio.streamFile(at: audioFilePath)
 }
}
