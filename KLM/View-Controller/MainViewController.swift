//
//  MainViewController.swift
//  KLM
//
//  Created by Diego Caridei on 14/11/17.
//  Copyright © 2017 Diego Caridei. All rights reserved.
//

import UIKit
import RxSwift
import RxDataSources

private enum IDENTIFIER {
  static let cellIdentifier = "houseCell"
  static let detailHouseViewControllerIdentifier = "detailHouseViewController"
}

class MainViewController: UIViewController {
  
  @IBOutlet weak var tableView : UITableView!
  let disposeBag = DisposeBag()
  var detailsHouses = [CommentViewModel]()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.rowHeight = 80
    fillTheTableView()
    tableViewDidSelectRowAtIndexPath()
  }
  
  fileprivate func goToDetailHouseViewControllerIdentifier(commentViewModel : CommentViewModel ){
    let detailHouseViewController       = storyboard?.instantiateViewController(withIdentifier: IDENTIFIER.detailHouseViewControllerIdentifier) as! DetailHouseViewController
    detailHouseViewController.viewModel = commentViewModel
    navigationController?.pushViewController(detailHouseViewController, animated: true)
  }
  
  //MARK: - TableView Methods
  fileprivate func tableViewDidSelectRowAtIndexPath(){
    tableView.rx.itemSelected
      .subscribe(onNext: { (indexPath) in
        self.goToDetailHouseViewControllerIdentifier(commentViewModel:self.detailsHouses[indexPath.row])
      })
      .disposed(by: disposeBag)
  }
  
  fileprivate func fillTheTableView(){
    APIClient.shared.getCommentsFromWebServices()
      .bind(to: tableView.rx.items(cellIdentifier: IDENTIFIER.cellIdentifier,
                                   cellType: CommentTableViewCell.self)) {
                                    (_,commentViewModel, cell) in
                                    cell.setCellWith(viewModel: commentViewModel)
                                    self.detailsHouses.append(commentViewModel)
      }
      .disposed(by: disposeBag)
  }
}
