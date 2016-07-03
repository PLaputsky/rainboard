//
//  RBBaseTableViewCell.swift
//  Rainboard
//
//  Created by Pavel Laputsky on 03.07.16.
//  Copyright © 2016 Rainboard. All rights reserved.
//

import UIKit

class RBBaseTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureWithCellItem(cellItem: RBBaseCellItem, forIndexPath: NSIndexPath){}

}
