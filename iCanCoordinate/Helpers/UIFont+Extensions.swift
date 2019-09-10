//
//  UIFont+Extensions.swift
//  iCanCoordinate
//
//  Created by Mark Dominick Flores on 10/09/2019.
//  Copyright © 2019 MarkTheiOSGuy. All rights reserved.
//

import UIKit

enum PlayFairDisplayFont: String {
    case regular = "PlayfairDisplay-Regular"
    case black = "PlayfairDisplay-Black"
    case bold = "PlayfairDisplay-Bold"
    
}

extension UIFont {
    struct playfairDisplay {
        static let regular = UIFont(name: PlayFairDisplayFont.regular.rawValue, size: UIFont.systemFontSize)!
        static let bold = UIFont(name: PlayFairDisplayFont.bold.rawValue, size: UIFont.systemFontSize)!
        static let black = UIFont(name: PlayFairDisplayFont.black.rawValue, size: UIFont.systemFontSize)!
    }
}
