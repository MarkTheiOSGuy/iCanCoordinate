//
//  UIViewController+Extensions.swift
//  iCanCoordinate
//
//  Created by Mark Dominick Flores on 09/09/2019.
//  Copyright © 2019 MarkTheiOSGuy. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    static var storyboardID: String {
        return "\(self)"
    }
    
    static func instantiate(from storyboardFactory: StoryboardFactory) -> Self {
        return storyboardFactory.viewController(viewControllerClass: self)
    }
    
    static func instantiate(from storyboardFactory: StoryboardFactory, with storyboardID: String) -> Self {
        return storyboardFactory.viewController(storyboardID: storyboardID)
    }
}
