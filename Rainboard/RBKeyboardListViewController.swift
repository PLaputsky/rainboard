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
        tableView.deselectRowAtIndexPath(indexPath, animated: false)
        
        switch cellItems?[indexPath.row] {
        case is RBRestorePurchasesCellItem:
            restorePurchases()
            return
        case is RBMoreKeyboardsCellItem:
            showShopListVC()
            return
        case let item as RBKeyboardPreviewCellItem:
            showKeyBoardSampleVC(item)
            return
        default:
            return
        }
    }
    
    private func restorePurchases(){
        //TODO: restore purchases
    }
    
    private func showShopListVC() {
        //TODO: show Shop List
    }
    
    private func showKeyBoardSampleVC(item: RBKeyboardPreviewCellItem) {
        guard let keyboardSampleVC = self.storyboard?.instantiateViewControllerWithIdentifier("KeyboardSampleVC") as? RBKeyboardSampleViewController else {
            return
        }
        
        keyboardSampleVC.keyboardType = item.keyboardType
        keyboardSampleVC.keyboardActivityStatus = item.keyboardStatusType
        
        self.presentViewController(keyboardSampleVC, animated: true, completion: nil)
    }
}

