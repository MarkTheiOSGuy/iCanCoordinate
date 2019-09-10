//
//  DashboardCoordinator.swift
//  iCanCoordinate
//
//  Created by Mark Dominick Flores on 10/09/2019.
//  Copyright © 2019 MarkTheiOSGuy. All rights reserved.
//

import Foundation
import UIKit

protocol DashboardCoordinatorDelegate: class {
    
}

class DashboardCoordinator: Coordinator {
    
    private let navController: UINavigationController
    weak var delegate: DashboardCoordinatorDelegate?
    
    init(navController: UINavigationController, delegate: DashboardCoordinatorDelegate) {
        self.navController = navController
        self.delegate = delegate
    }
    
    func start() {
        let dashboard = DashboardViewController.instantiate(from: .main)
        navController.setViewControllers([dashboard], animated: true)
    }
}
