//
//  UIColor+Utils.swift
//  Rainboard
//
//  Created by Pavel Laputsky on 01.07.16.
//  Copyright © 2016 Rainboard. All rights reserved.
//


//extension UIColor {
//    
//    convenience init(red: Int, green: Int, blue: Int) {
//        assert(red >= 0 && red <= 255, "Invalid red component")
//        assert(green >= 0 && green <= 255, "Invalid green component")
//        assert(blue >= 0 && blue <= 255, "Invalid blue component")
//        
//        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
//    }
//    
//    convenience init(netHex:Int) {
//        self.init(red:(netHex >> 16) & 0xff, green:(netHex >> 8) & 0xff, blue:netHex & 0xff)
//    }
//
//    class func colorWithHexString (hex:String) -> UIColor {
//        var cString:String = hex.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet()).uppercaseString
//        
//        if (cString.hasPrefix("#")) {
//            cString = (cString as NSString).substringFromIndex(1)
//        }
//        
//        if (cString.characters.count != 6) {
//            return UIColor.grayColor()
//        }
//        
//        let rString = (cString as NSString).substringToIndex(2)
//        let gString = ((cString as NSString).substringFromIndex(2) as NSString).substringToIndex(2)
//        let bString = ((cString as NSString).substringFromIndex(4) as NSString).substringToIndex(2)
//        
//        var r:CUnsignedInt = 0, g:CUnsignedInt = 0, b:CUnsignedInt = 0;
//        NSScanner(string: rString).scanHexInt(&r)
//        NSScanner(string: gString).scanHexInt(&g)
//        NSScanner(string: bString).scanHexInt(&b)
//        
//        return UIColor(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: CGFloat(1))
//    }
//}