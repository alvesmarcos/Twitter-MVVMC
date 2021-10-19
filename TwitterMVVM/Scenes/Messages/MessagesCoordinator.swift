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
    var isCompleted: (() -> Void)?
    var rootViewController: UINavigationController
    var childCoordinators = [Coordinator]()
    
    // MARK: - Constructors
    
    init(rootViewController: UINavigationController = UINavigationController()) {
        self.rootViewController = rootViewController
    }
    
    // MARK: - Functions

    func start() {
        let messagesViewController = MessagesViewController()
        setupRootViewController()
        self.rootViewController.setViewControllers([messagesViewController], animated: true)
    }
    
    private func setupRootViewController() {
        rootViewController.tabBarItem.image = UIImage(named: "Mail")
        rootViewController.tabBarItem.selectedImage = UIImage(named: "Mail.fill")
    }
}
