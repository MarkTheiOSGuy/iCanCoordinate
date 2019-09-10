//
//  MainCoordinator.swift
//  iCanCoordinate
//
//  Created by Mark Dominick Flores on 09/09/2019.
//  Copyright © 2019 MarkTheiOSGuy. All rights reserved.
//

import Foundation
import UIKit

final class MainCoordinator: Coordinator {
    
    private let navController: UINavigationController
    private let window: UIWindow
    private var childCoordinators: [Coordinator] = []
    
    init(navController: UINavigationController, in window: UIWindow) {
        self.navController = navController
        self.window = window
    }
    
    func start() {
        window.rootViewController = navController
        window.makeKeyAndVisible()
        
        showOnboarding()
    }
}

// MARK: - Navigation
extension MainCoordinator {
    private func showOnboarding() {
        let onboarding = OnboardingViewController.instantiate(from: .onboarding)
        onboarding.delegate = self
        navController.setViewControllers([onboarding], animated: true)
        navController.setNavigationBarHidden(true, animated: false)
        childCoordinators.removeAll()
    }
    
    private func showDashboard() {
        let dashboardCoordinator = DashboardCoordinator(navController: self.navController, delegate: self)
        childCoordinators.append(dashboardCoordinator)
        dashboardCoordinator.start()
    }
}

extension MainCoordinator: OnboardingViewControllerDelegate {
    func performGetStarted() {
        showDashboard()
    }
}

extension MainCoordinator: DashboardCoordinatorDelegate {
    
}
