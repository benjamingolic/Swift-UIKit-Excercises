//
//  Model.swift
//  NSData_Rest
//
//  Created by Benjamin Golic on 05.11.20.
//

import Foundation

class Post {
  var id = 0
  var userId = 0
  var title = ""
  var body = ""
}

class Model {
  var posts = [Post]()
}
