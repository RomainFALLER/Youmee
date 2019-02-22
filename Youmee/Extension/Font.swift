//
//  Font.swift
//  Youmee
//
//  Created by Benoit Fagot on 20/02/2019.
//  Copyright © 2019 FALLER Romain. All rights reserved.
//

import Foundation
import UIKit

extension UIFont{
    public enum stylefont: String {
        case Bold, BoldItalic, DemiBold, DemiBoldItalic, Heavy, HeavyItalic, Medium, MediumItalic, Regular, UltraLight, UltraLightItalic
    }
    public enum fontBook: String{
        case HelveticaNeue,AvenirNext
    }
    public class func fontWithStyle(ofSize size: CGFloat,font: fontBook, style: stylefont) -> UIFont{
        return UIFont(name: "\(font)-\(style)", size: size)!
    }
    public class func textFont() -> UIFont{

        return UIFont(name: "Avenir Next", size: 12)!
    }
    public class func titleFont() -> UIFont{
        return UIFont(name: "Avenir Next", size: 20)!
    }
}

