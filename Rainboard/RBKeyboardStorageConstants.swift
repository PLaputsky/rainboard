//
//  RBKeyboardStorageConstants.swift
//  Rainboard
//
//  Created by Pavel Laputsky on 28.06.16.
//  Copyright © 2016 Rainboard. All rights reserved.
//

import Foundation

typealias KeyboardConfigs = (topColor: String, bottomColor: String, name: String)

enum KeyboardType {
    case
    PinkSerenity,
    OceanWave,
    PurpleDreams,
    BlueberryNights
    
    func settings() -> KeyboardConfigs {
        switch self {
        case .PinkSerenity:
            return (topColor: "FFFFFF", bottomColor: "AAAAAAA", name: "PINK SERENITY")
        case .OceanWave:
            return (topColor: "FFFFFF", bottomColor: "AAAAAAA", name: "OCEAN WAVE")
        case .PurpleDreams:
            return (topColor: "FFFFFF", bottomColor: "AAAAAAA", name: "PURPLE DREAMS")
        case BlueberryNights:
            return (topColor: "FFFFFF", bottomColor: "AAAAAAA", name: "BLUEBERRY NIGHTS")
        }
    }
}

typealias KeyboardStatusConfigs = (color: String, descriptin: String)

enum KeyboardActivityStatus {
    case
    isUsing,
    Use,
    Price(String)
    
    func settings() -> KeyboardStatusConfigs {
        switch self {
        case .isUsing:
            return (color: "", descriptin: "USING ")
        case .Use:
            return (color: "", descriptin: "USE")
        case .Price(let value):
            return (color: "", descriptin: value)
        }
    }
}