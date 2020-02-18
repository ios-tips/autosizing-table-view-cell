//
//  ViewController.swift
//  autosizing-table-view-cell
//
//  Created by Roman Guseynov on 18.02.2020.
//  Copyright © 2020 Roman Guseynov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  
  // MARK: Data
  var dataArray = ["ShortString", "LongStringLongStringLongStringLongStringLongStringLongStringLongStringLongString", "S", "Hello there"]
  
  
  // MARK: outlets
  
  @IBOutlet weak var tableView: UITableView!
  
  
  // MARK: Lifecycle

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    setupTableView()
  }

  override func viewWillLayoutSubviews() {
    super.viewWillLayoutSubviews()
    
  }
  
  
  
  func setupTableView() {
    self.tableView.register(ExampleTableViewCell.self, forCellReuseIdentifier: "Cell")
    tableView.delegate = self
    tableView.dataSource = self
    tableView.translatesAutoresizingMaskIntoConstraints = false
  }

}

extension ViewController: UITableViewDelegate {
  
}
extension ViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return dataArray.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! ExampleTableViewCell
    cell.setupCell(with: dataArray[indexPath.row])
    return cell
  }
  
  
}
