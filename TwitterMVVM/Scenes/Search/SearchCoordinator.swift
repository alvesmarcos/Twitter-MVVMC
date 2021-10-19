//
//  HomeCoordinator.swift
//  TwitterMVVM
//
//  Created by Marcos Alves on 18/10/21.
//

import Foundation
import UIKit

class SearchCoordinator: NavigationCoordinator {
    // MARK: - Properties
    
    var rootViewController: UINavigationController
    var childCoordinators = [Coordinator]()
    
    // MARK: - Constructors
    
    init(rootViewController: UINavigationController = UINavigationController()) {
        self.rootViewController = rootViewController
    }
    
    // MARK: - Functions

    func start() {
        let searchViewController = SearchViewController()
        setupUI()
        self.rootViewController.setViewControllers([searchViewController], animated: true)
    }
    
    private func setupUI() {
        rootViewController.tabBarItem.image = UIImage(named: "Search")
        rootViewController.tabBarItem.selectedImage = UIImage(named: "Search.fill")
    }
}
