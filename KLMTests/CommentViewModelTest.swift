//
//  CommentViewModelTest.swift
//  KLMTests
//
//  Created by Diego Caridei on 14/11/17.
//  Copyright © 2017 Diego Caridei. All rights reserved.
//

import XCTest
@testable import KLM
class CommentViewModelTest: XCTestCase {
  
  var commentViewModel  : CommentViewModel!
  var comment           : Comment!
  let nameHouse         = "house"
  let emailHouse        = "agap2@klm.com"
  let idHouse           = 1
  let bodyTextHouse     = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five "
  
  override func setUp() {
    super.setUp()
    comment = Comment(name: nameHouse,
                      email: emailHouse,
                      body: bodyTextHouse,
                      id: idHouse)
    commentViewModel = CommentViewModel(comment: comment)
  }
  
  override func tearDown() {
    super.tearDown()
  }
  
  func testNameHouseNotNil(){
    XCTAssertNotNil(commentViewModel.nameText)
  }
  
  func testEmailHouseNotNil(){
    XCTAssertNotNil(commentViewModel.emailText)
  }
  
  func testIdHouseNotNil(){
    XCTAssertNotNil(commentViewModel.idText)
  }
  
  func testBodyTextHouse(){
    XCTAssertNotNil(commentViewModel.bodyText)
  }
  
}
