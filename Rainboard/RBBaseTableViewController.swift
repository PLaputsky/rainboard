//
//  RBBaseTableViewController.swift
//  Rainboard
//
//  Created by Pavel Laputsky on 01.07.16.
//  Copyright © 2016 Rainboard. All rights reserved.
//

import UIKit

protocol RBBaseTableViewDataSource: UITableViewDataSource {
    func registerXibsForTableView(tableView: UITableView)
    func cellItemsInTableView(tableView: UITableView) -> [RBBaseCellItem]
}

class RBBaseTableViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var cellItems: [RBBaseCellItem]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
    }
    
    func configureTableView() {
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        self.cellItems = cellItemsInTableView(tableView)
        registerXibsForTableView(tableView)
    }
}

extension RBBaseTableViewController: RBBaseTableViewDataSource {
    func cellItemsInTableView(tableView: UITableView) -> [RBBaseCellItem] {
        return []
    }
    
    func registerXibsForTableView(tableView: UITableView) {
        for cellItem in cellItems! {
            tableView.registerNib(UINib(nibName: cellItem.xibName!, bundle: nil),
                                  forCellReuseIdentifier: cellItem.cellIdentifier)
        }
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellItems?.count ?? 0
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellItem = cellItems![indexPath.row]
        let cellIdenitifer = cellItem.cellIdentifier
        
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdenitifer) as! RBBaseTableViewCell
        cell.configureWithCellItem(cellItem, forIndexPath: indexPath)
        
        return cell
    }
}

extension RBBaseTableViewController: UITableViewDelegate {
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        guard let cellItem = cellItems?[indexPath.row] else {
            return 0
        }
        
        return cellItem.cellHeight
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {}
}