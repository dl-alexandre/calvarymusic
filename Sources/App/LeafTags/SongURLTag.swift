//
//  RemoveSpacesTag.swift
//
//
//  Created by Dalton Alexandre on 5/9/24.
//

import Leaf

struct SongURLTag: LeafTag {
 func render(_ ctx: LeafContext) throws -> LeafData {
  let artist = Song().artist
  let title = Song().title
  let string = artist + "/" + title
  let URLReadyString = string.replacingOccurrences(of: " ", with: "")
  return .string(URLReadyString.lowercased())
 }
}
