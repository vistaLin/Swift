//
//  ViewController.swift
//  SwiftDemo
//
//  Created by xingkuanlin on 2020/12/26.
//

import UIKit


class ViewController: UIViewController {
   let cellId = "cellId"
    
    var tableView = UITableView()
    let array = ["test"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "swiftDemo"
        self.setupUI()
      
    }
}

// MARK: private method
extension ViewController {
    func setupUI() {
        tableView.frame = self.view.bounds
        self.view.addSubview(tableView)
        tableView.dataSource = self
        tableView.register(titleCell.self, forCellReuseIdentifier: cellId)
        tableView.tableFooterView = UIView()
    }
    
}

// MARK: UITableViewDataSource
extension ViewController :UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: cellId) as! titleCell
        cell.title = array[indexPath.row]
        return cell
    }
}


