//
//  MainCoordinator.swift
//  TwitterMVVM
//
//  Created by Marcos Alves on 18/10/21.
//

import Foundation
import UIKit

class MainCoordinator: TabCoordinator {

    // MARK: - Properties
    var isCompleted: (() -> Void)?
    var rootViewController: UITabBarController
    var childCoordinators = [Coordinator]()
    
    // MARK: - Constructors

    init(rootViewController: UITabBarController = UITabBarController()) {
        self.rootViewController = rootViewController
    }
    
    // MARK: - Functions
    
    func start() {
        let homeCoordinator = HomeCoordinator()
        let searchCoordinator = SearchCoordinator()
        let notificationsCoordinator = NotificationsCoordinator()
        let messagesCoordinator = MessagesCoordinator()
        
        self.store(coordinator: homeCoordinator)
        self.store(coordinator: searchCoordinator)
        self.store(coordinator: notificationsCoordinator)
        self.store(coordinator: messagesCoordinator)

        homeCoordinator.start()
        searchCoordinator.start()
        notificationsCoordinator.start()
        messagesCoordinator.start()
        
        rootViewController.tabBar.tintColor = UIColor(named: "AccentColor")
        rootViewController.tabBar.isTranslucent = false
        rootViewController.setViewControllers(
            [
                homeCoordinator.rootViewController,
                searchCoordinator.rootViewController,
                notificationsCoordinator.rootViewController,
                messagesCoordinator.rootViewController
            ],
            animated: true
        )
    }
}
