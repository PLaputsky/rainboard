//
//  RBBaseCellItem.swift
//  Rainboard
//
//  Created by Pavel Laputsky on 03.07.16.
//  Copyright © 2016 Rainboard. All rights reserved.
//

import UIKit

class RBBaseCellItem: NSObject {
    var cellIdentifier: String
    var cellHeight: CGFloat = 0.0
    
    var xibName: String? {
        get {
            return cellIdentifier
        }
    }
    
    init(identifier: String) {
        cellIdentifier = identifier
        super.init()
    }
}
