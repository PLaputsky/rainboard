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

class RBMenuViewController: RBBaseTableViewController {
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
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        guard let item = cellItems?[indexPath.row] as? RBMenuCellItem  else {
            return
        }
        
        switch item.menuItemType {
        case .Library:
            return
        case .Shop:
            return
        case .Share:
            return
        case .Contacts:
            return
        }
    }
    
    @IBAction private func closeButtonWasTouched(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
