//
//  RBKeyboardPreviewCell.swift
//  Rainboard
//
//  Created by Pavel Laputsky on 28.06.16.
//  Copyright © 2016 Rainboard. All rights reserved.
//

import UIKit

protocol RBKeyboardPreviewCellProtocol {
    func didSelectStatusButtonForCell(cell: RBBaseTableViewCell, indexPath: NSIndexPath)
}

class RBKeyboardPreviewCell: RBBaseTableViewCell {
    static let cellIdentifire = String(RBKeyboardPreviewCell)
    
    @IBOutlet weak var statusButton: UIButton!
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBAction private func statusButtonWasTouched(sender: AnyObject) {
        //delegate.didSelectStatusButtonForCell(self, indexPath: indexPath)
        updateStatusButtonWithStatus(.isUsing)
    }
    
    
    override func awakeFromNib() {
        
    }
    
    override func prepareForReuse() {
        statusButton.backgroundColor = UIColor.clearColor()
        statusButton.layer.borderColor = UIColor.clearColor().CGColor
        statusButton.layer.borderWidth = 0
        statusButton.titleLabel?.text = nil
    }
    
    override func configureWithCellItem(cellItem: RBBaseCellItem, forIndexPath: NSIndexPath) {
        guard let item = cellItem as? RBKeyboardPreviewCellItem else {
            return
        }
        
        setupWithKeyboardType(item.keyboardType)
        updateStatusButtonWithStatus(item.keyboardStatusType)
    }
    
    private func setupWithKeyboardType(type: KeyboardType){
        nameLabel.text = type.settings().name
        
        //TODO: setup background color
    }
    
    private func updateStatusButtonWithStatus(keyboardStatus: KeyboardActivityStatus) {
        //TODO: Update status button logic
        switch keyboardStatus {
        case .isUsing:
            statusButton.backgroundColor = UIColor.clearColor()
            statusButton.layer.borderColor = UIColor.whiteColor().CGColor
            statusButton.layer.borderWidth = 1
            statusButton.setTitle(keyboardStatus.settings().description, forState: .Normal)
            break;
        case .Use:
            statusButton.backgroundColor = UIColor.blackColor()
            statusButton.layer.borderWidth = 0
            statusButton.setTitle(keyboardStatus.settings().description, forState: .Normal)
            break;
        case .Price:
            statusButton.backgroundColor = UIColor.blackColor()
            statusButton.layer.borderWidth = 0
            statusButton.setTitle(keyboardStatus.settings().description, forState: .Normal)
        }
    }
}
