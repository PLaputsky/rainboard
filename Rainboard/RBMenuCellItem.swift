//
//  RBMenuCellItem.swift
//  Rainboard
//
//  Created by Pavel Laputsky on 04.07.16.
//  Copyright © 2016 Rainboard. All rights reserved.
//

import UIKit

class RBMenuCellItem: RBBaseCellItem {
    
    let menuItemType: MenuItemType
    
    init(itemType: MenuItemType ){
        menuItemType = itemType
        super.init(identifier: RBMenuCell.cellIdentifire)
        cellHeight = 50
    }
}
