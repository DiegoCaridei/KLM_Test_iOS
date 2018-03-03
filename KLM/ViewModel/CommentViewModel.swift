//
//  CommentViewModel.swift
//  KLM
//
//  Created by Diego Caridei on 14/11/17.
//  Copyright © 2017 Diego Caridei. All rights reserved.
//
import UIKit
import RxSwift

class CommentViewModel {
  
  private var  comment  : Comment
  let disposeBag        = DisposeBag()
  
  var idText : Int {
    guard let id = comment.id else  {return -100}
    return id
  }
  
  var nameText: String {
    guard let name = comment.name else { return "No Name"}
    return name
  }
  
  var emailText: String {
    guard let email = comment.email else { return "No Email"}
    return email
  }
  
  var bodyText: String {
    guard let body = comment.body else { return "...."}
    return body
  }
  
  public init (comment:Comment) {
    self.comment = comment
  }
}
