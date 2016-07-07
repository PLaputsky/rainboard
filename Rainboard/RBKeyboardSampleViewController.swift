//
//  RBKeyboardSampleViewController.swift
//  Rainboard
//
//  Created by Pavel Laputsky on 28.06.16.
//  Copyright © 2016 Rainboard. All rights reserved.
//

import UIKit

class RBKeyboardSampleViewController: UIViewController {
    var keyboardType: KeyboardType?
    var keyboardActivityStatus: KeyboardActivityStatus?
    
    @IBOutlet private weak var nameTitle: UILabel!
    @IBOutlet private weak var descritionLabel: UILabel!
    @IBOutlet private weak var keyboardSampleView: UIImageView!
    @IBOutlet private weak var keyboardImpactButton: UIButton!
    
    override func viewDidLoad() {
        nameTitle.text = keyboardType?.settings().name
        
        //let impactButtonText =
        
        keyboardImpactButton.setTitle(titleForImpactButton(), forState: .Normal)
    }
    
    private func titleForImpactButton() -> String {
        guard let keyboardActivityStatus = keyboardActivityStatus else {
            return "USE THIS KEYBOARD"
        }
        
        switch keyboardActivityStatus {
        case .isUsing:
            return "KEYBOARD IS ACTIVE"
        case .Use:
            return "USE THIS KEYBOARD"
        case .Price:
            return "ONY FOR \(keyboardActivityStatus.settings().description)"
        }
    }
    
    @IBAction private func closeButtonWasTouched(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction private func shareButtonWasTouched(sender: AnyObject) {
        
    }
    
    @IBAction private func impactButtonWasTouched(sender: AnyObject) {
        
    }
}

