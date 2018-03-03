//
//  Comment.swift
//  KLM
//
//  Created by Diego Caridei on 14/11/17.
//  Copyright © 2017 Diego Caridei. All rights reserved.
//

import Foundation
import UIKit
struct Comment {
  
  var name  : String?
  var email : String?
  var body  : String?
  var id    : Int?
  
  init(name: String, email: String,  body: String, id: Int ) {
    self.name  = name
    self.email = email
    self.body  = body
    self.id    = id
  }
}
