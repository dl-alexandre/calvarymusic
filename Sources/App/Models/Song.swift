//
//  Song.swift
//
//
//  Created by Dalton Alexandre on 5/9/24.
//

struct Song: Encodable {
 var artist: String = "Stephen Ethridge"
 var title: String = "Your Disciple"
 
 var artistString: String {
  artist.replacingOccurrences(of: " ", with: "")
 }
 
 var titleString: String {
  title.replacingOccurrences(of: " ", with: "")
 }
 
 var route: String {
  let route = artistString + "/" + titleString
  return route
 }
}
