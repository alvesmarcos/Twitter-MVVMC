//
//  HomeCoordinator.swift
//  TwitterMVVM
//
//  Created by Marcos Alves on 18/10/21.
//

import Foundation
import UIKit

class MessagesCoordinator: NavigationCoordinator {
    // MARK: - Properties
    
    var rootViewController: UINavigationController
    var childCoordinators = [Coordinator]()
    
    // MARK: - Constructors
    
    init(rootViewController: UINavigationController = UINavigationController()) {
        self.rootViewController = rootViewController
    }
    
    // MARK: - Functions

    func start() {
        let messagesViewController = MessagesViewController()
        setupUI()
        self.rootViewController.setViewControllers([messagesViewController], animated: true)
    }
    
    private func setupUI() {
        rootViewController.tabBarItem.image = UIImage(named: "Mail")
        rootViewController.tabBarItem.selectedImage = UIImage(named: "Mail.fill")
    }
}
