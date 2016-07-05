//
//  RBKeyboardListViewController.swift
//  Rainboard
//
//  Created by Pavel Laputsky on 28.06.16.
//  Copyright © 2016 Rainboard. All rights reserved.
//

import UIKit

class RBKeyboardListViewController: RBBaseTableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.hideBottomHairline()
    }
    
    override func viewWillAppear(animated: Bool) {
        
    }
    
    private func openMenu(sender: AnyObject?){
        
    }
    
    override func cellItemsInTableView(tableView: UITableView) -> [RBBaseCellItem] {
        return [RBRestorePurchasesCellItem(),
                RBKeyboardPreviewCellItem(keyboardType: .BlueberryNights, statusButtonType: .isUsing),
                RBKeyboardPreviewCellItem(keyboardType: .OceanWave, statusButtonType: .Use),
                RBKeyboardPreviewCellItem(keyboardType: .PinkSerenity, statusButtonType: .Price("$99.00")),
                RBKeyboardPreviewCellItem(keyboardType: .PurpleDreams, statusButtonType: .Price("$9.99")),
                RBMoreKeyboardsCellItem()
        ]
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        switch indexPath.row {
//        case <#pattern#>:
//            <#code#>
//        default:
//            <#code#>
//        }
    }
    
    private func showShopListVC() {
        //TODO: show Shop List
    }
    
    private func showKeyBoardSampleVC() {
        //TODO: show Keyboard Sample Screen
    }
}

