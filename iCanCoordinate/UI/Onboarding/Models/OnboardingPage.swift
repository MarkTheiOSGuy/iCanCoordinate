//
//  OnboardingPage.swift
//  iCanCoordinate
//
//  Created by Mark Dominick Flores on 09/09/2019.
//  Copyright © 2019 MarkTheiOSGuy. All rights reserved.
//

import Foundation
import UIKit

enum OnboardingPage: Int {
    case beans = 0
    case service
    case dessert
    
    var image: UIImage? {
        var imageName: String = ""
        switch self {
        case .beans:
            imageName = "onboarding-1"
        case .service:
            imageName = "onboarding-2"
        case .dessert:
            imageName = "onboarding-3"
        }

        return UIImage(named: imageName)
    }
    
    var description: String {
        switch self {
        case .beans:
            return "High Quality Beans"
        case .service:
            return "High Regard for Service"
        case .dessert:
            return "A delightful taste of Heaven"
        }
    }
}
