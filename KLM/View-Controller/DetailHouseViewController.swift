//
//  DetailHouseViewController.swift
//  KLM
//
//  Created by Diego Caridei on 14/11/17.
//  Copyright © 2017 Diego Caridei. All rights reserved.
//

import UIKit

enum PREFIX {
  static let id = "ID: "
  static let name = "Name: "
  static let description = "Description:\n"
}

class DetailHouseViewController: UIViewController {
  
  @IBOutlet weak var idLabel     : UILabel!
  @IBOutlet weak var textViewBody: UITextView!
  @IBOutlet weak var nameLabel   : UILabel!
  var  viewModel                 : CommentViewModel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    idLabel.text      = PREFIX.id + String(describing: viewModel.idText)
    nameLabel.text    = PREFIX.name + viewModel.nameText
    textViewBody.text = PREFIX.description + viewModel.bodyText
  }
}
