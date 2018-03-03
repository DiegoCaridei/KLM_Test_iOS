//
//  APIClient.swift
//  KLM
//
//  Created by Diego Caridei on 14/11/17.
//  Copyright © 2017 Diego Caridei. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift
import RxAlamofire
import SwiftyJSON
enum API {
  static let baseURL = "https://jsonplaceholder.typicode.com"
  static let comments = "/comments"
}

final class APIClient {
  
  let commentsURL   = API.baseURL + API.comments
  static let shared = APIClient()
  
  private init() { }
  
  func getCommentsFromWebServices() -> Observable<[CommentViewModel]>{
    return RxAlamofire
      .request(.get, commentsURL)
      .flatMap {
        $0.validate(statusCode: 200..<300)
          .rx.json()
      }
      .retry(3)
      .map{(data) -> [CommentViewModel] in
        var commentsViewModel = [CommentViewModel]()
        let json = JSON(data)
        for (_,jsonValue):(String, JSON) in json {
          if  let name  = jsonValue["name"].string,
            let email   = jsonValue["email"].string,
            let body    = jsonValue["body"].string,
            let id      = jsonValue["id"].int
            {
            commentsViewModel.append(CommentViewModel(comment:
              Comment(name: name,
                      email: email,
                      body: body,
                      id:id)))
          }
        }
        return commentsViewModel
    }
  }
}
