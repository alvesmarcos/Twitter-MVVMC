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
    
    var rootViewController: UINavigationController
    var childCoordinators = [Coordinator]()
    
    // MARK: - Constructors
    
    init(rootViewController: UINavigationController = UINavigationController()) {
        self.rootViewController = rootViewController
    }
    
    // MARK: - Functions

    func start() {
        let homeViewController = HomeViewController()
        setupUI()
        self.rootViewController.setViewControllers([homeViewController], animated: true)
    }
    
    private func setupUI() {
        rootViewController.tabBarItem.image = UIImage(named: "Home")
        rootViewController.tabBarItem.selectedImage = UIImage(named: "Home.fill")
    }
}
