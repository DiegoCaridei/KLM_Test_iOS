//
//  ContainerView.swift
//  KLM
//
//  Created by Diego Caridei on 14/11/17.
//  Copyright © 2017 Diego Caridei. All rights reserved.
//

import UIKit
class ContainerView: UIView {
  
  override func draw(_ rect: CGRect) {
    super.draw(rect)
    layer.borderColor  = UIColor.gray.cgColor
    layer.borderWidth  = 1
    layer.cornerRadius = 14
  }
}
