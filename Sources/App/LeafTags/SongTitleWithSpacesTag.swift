//
//  SongTitleWithSpacesTag.swift
//  
//
//  Created by Dalton Alexandre on 5/9/24.
//

import Leaf

struct SongTitleWithSpacesTag: LeafTag {
 func render(_ ctx: LeafContext) throws -> LeafData {
  let string = Song().title
  let title = string.replacingOccurrences(of: " ", with: "%20")
  return .string(title)
 }
}


