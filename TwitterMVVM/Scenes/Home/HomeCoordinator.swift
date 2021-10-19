//
//  HomeCoordinator.swift
//  TwitterMVVM
//
//  Created by Marcos Alves on 18/10/21.
//

import Foundation
import UIKit

class HomeCoordinator: NavigationCoordinator {
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
        let homeViewController = HomeViewController()
        setupRootViewController()
        self.rootViewController.setViewControllers([homeViewController], animated: true)
    }
    
    private func setupRootViewController() {
        rootViewController.tabBarItem.image = UIImage(named: "Home")
        rootViewController.tabBarItem.selectedImage = UIImage(named: "Home.fill")
    }
}
