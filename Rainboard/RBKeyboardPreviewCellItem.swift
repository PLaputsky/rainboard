//
//  RBKeyboardPreviewCellItem.swift
//  Rainboard
//
//  Created by Pavel Laputsky on 29.06.16.
//  Copyright © 2016 Rainboard. All rights reserved.
//

import UIKit

class RBKeyboardPreviewCellItem: RBBaseCellItem {
    var keyboardType: KeyboardType
    var statusButtonType: KeyboardActivityStatus
    
    init(keyboardType: KeyboardType, statusButtonType: KeyboardActivityStatus){
        self.keyboardType = keyboardType
        self.statusButtonType = statusButtonType
        
        super.init(identifier: RBKeyboardPreviewCell.cellIdentifire)
        
        cellHeight = 108
    }
}
