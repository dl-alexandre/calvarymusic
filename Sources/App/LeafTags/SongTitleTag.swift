//
//  SongTitleTag.swift
//
//
//  Created by Dalton Alexandre on 5/9/24.
//

import Leaf

struct SongTitleTag: LeafTag {
 func render(_ ctx: LeafContext) throws -> LeafData {
  let title = Song().title
  return .string(title)
 }
}
