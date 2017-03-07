//
//  HHUtility.swift
//  Pods
//
//  Created by hardik99 on 07/03/17.
//
//

import UIKit

extension UIColor{
    
    @nonobjc public static let themeColor : UIColor = UIColor(red: 194.2/255.0, green: 154.3/255.0, blue: 33.4/255.0, alpha: 1.0)
    
    public static func themeColorWithAlpha(_ Alpha:CGFloat ) -> UIColor{
        return UIColor(red: 249/255.0, green: 164/255.0, blue: 118/255.0, alpha: Alpha)
    }
    
    public static func colorFromRGB(R r:CGFloat, G:CGFloat, B:CGFloat, Alpha:CGFloat ) -> UIColor{
        return UIColor(red: r/255.0, green: G/255.0, blue: B/255.0, alpha: Alpha)
    }
}

extension CGFloat{
    @nonobjc public static let screenWidht : CGFloat = UIScreen.main.bounds.width
    @nonobjc public static let screenHeight: CGFloat = UIScreen.main.bounds.height
    
}

extension String
{
    var isNumeric: Bool
    {
        let range = self.rangeOfCharacter(from: CharacterSet.decimalDigits.inverted)
        return (range == nil)
    }
}

extension UIColor {
    convenience init(hex: String) {
        let scanner = Scanner(string: hex)
        scanner.scanLocation = 0
        
        var rgbValue: UInt64 = 0
        
        scanner.scanHexInt64(&rgbValue)
        
        let r = (rgbValue & 0xff0000) >> 16
        let g = (rgbValue & 0xff00) >> 8
        let b = rgbValue & 0xff
        
        self.init(
            red: CGFloat(r) / 0xff,
            green: CGFloat(g) / 0xff,
            blue: CGFloat(b) / 0xff, alpha: 1
        )
    }
}
