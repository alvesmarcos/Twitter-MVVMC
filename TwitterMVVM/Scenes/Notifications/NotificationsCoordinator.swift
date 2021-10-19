//
//  HomeCoordinator.swift
//  TwitterMVVM
//
//  Created by Marcos Alves on 18/10/21.
//

import Foundation
import UIKit

class NotificationsCoordinator: NavigationCoordinator {
    // MARK: - Properties
    var isCompleted: (() -> Void)?
    var rootViewController: UINavigationController
    var childCoordinators = [Coordinator]()
    
    // MARK: - Constructors
    
    init(rootViewController: UINavigationController = UINavigationController()) {
        self.rootViewController = rootViewController
    }
    
    // MARK: - Functions

    func start() {
        let notificationsViewController = NotificationsViewController()
        setupRootViewController()
        self.rootViewController.setViewControllers([notificationsViewController], animated: true)
    }
    
    private func setupRootViewController() {
        rootViewController.tabBarItem.image = UIImage(named: "Bell")
        rootViewController.tabBarItem.selectedImage = UIImage(named: "Bell.fill")
    }
}
