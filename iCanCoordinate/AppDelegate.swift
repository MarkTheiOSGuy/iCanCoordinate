//
//  AppDelegate.swift
//  iCanCoordinate
//
//  Created by Mark Dominick Flores on 09/09/2019.
//  Copyright © 2019 MarkTheiOSGuy. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    private var app: MainCoordinator?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let navController = UINavigationController()
        let mainCoordinator = MainCoordinator(navController: navController, in: window!)
        app = mainCoordinator
        
        app?.start()
        
        return true
    }
}

