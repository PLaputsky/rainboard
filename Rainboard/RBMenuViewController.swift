//
//  RBMenuViewController.swift
//  Rainboard
//
//  Created by Pavel Laputsky on 28.06.16.
//  Copyright © 2016 Rainboard. All rights reserved.
//

import UIKit

enum MenuItemType: String {
    case
    Library = "LIBRARRY",
    Shop = "SHOP",
    Share = "SHARE THE APP",
    Contacts = "CONTACT US"
}

class RBMenuViewController: RBBaseListViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func cellItemsInTableView(tableView: UITableView) -> [RBBaseCellItem] {
        return [
            RBMenuCellItem(itemType: .Library),
            RBMenuCellItem(itemType: .Shop),
            RBMenuCellItem(itemType: .Share),
            RBMenuCellItem(itemType: .Contacts)
        ]
    }
}
