//
//  ApiTest.swift
//  KLMTests
//
//  Created by Diego Caridei on 14/11/17.
//  Copyright © 2017 Diego Caridei. All rights reserved.
//

import XCTest
import RxSwift
@testable import KLM
class ApiTest: XCTestCase {
  let disposeBag = DisposeBag()
  
  override func setUp() {
    super.setUp()
  }
  
  override func tearDown() {
    super.tearDown()
  }
  
  func testFetchDataFromURLNotNil(){
    APIClient.shared.getCommentsFromWebServices()
      .subscribe(onNext: { (viewMdels) in
        XCTAssertNotNil(viewMdels)
      }).disposed(by: disposeBag)
  }

  func testFetchDataModelFromURL(){
    APIClient.shared.getCommentsFromWebServices()
      .subscribe(onNext: { (viewMdels) in
        XCTAssertTrue(viewMdels.count > 0)
      }).disposed(by: disposeBag)
  }
}
