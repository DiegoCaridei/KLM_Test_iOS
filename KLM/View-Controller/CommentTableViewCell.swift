//
//  CommentTableViewCell.swift
//  KLM
//
//  Created by Diego Caridei on 14/11/17.
//  Copyright © 2017 Diego Caridei. All rights reserved.
//

import UIKit
class CommentTableViewCell: UITableViewCell {
  
  @IBOutlet weak var houseImageView: UIImageView!
  @IBOutlet weak var idLabel       : UILabel!
  @IBOutlet weak var emailLabel    : UILabel!
  @IBOutlet weak var nameLabel     : UILabel!
  
  override func awakeFromNib() {
    super.awakeFromNib()
  }
  
  func setCellWith(viewModel: CommentViewModel) {
    self.nameLabel.text  = viewModel.nameText
    self.emailLabel.text = viewModel.emailText
    self.idLabel.text    = String(describing: viewModel.idText)
  }
}
