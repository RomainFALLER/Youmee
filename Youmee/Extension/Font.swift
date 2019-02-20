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
    public class func avenirNext(ofSize size: CGFloat) -> UIFont{
        return UIFont(name: "Avenir Next", size: size)!
    }
    public class func textFont() -> UIFont{
        return UIFont(name: "Avenir Next", size: 12)!
    }
    public class func titleFont() -> UIFont{
        return UIFont(name: "Avenir Next", size: 20)!
    }
}

