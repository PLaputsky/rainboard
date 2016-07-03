//
//  RBMenuCell.swift
//  Rainboard
//
//  Created by Pavel Laputsky on 01.07.16.
//  Copyright © 2016 Rainboard. All rights reserved.
//

import UIKit

class RBMenuCell: RBBaseTableViewCell {
     static let cellIdentifire = String(RBMenuCell)
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func configureWithCellItem(cellItem: RBBaseCellItem, forIndexPath: NSIndexPath) {
        guard let item = cellItem as? RBMenuCellItem else {
            return
        }
        
        nameLabel.text = item.menuItemType.rawValue
    }
}
