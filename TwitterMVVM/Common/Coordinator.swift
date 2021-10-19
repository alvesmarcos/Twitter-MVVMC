//
//  Coordinator.swift
//  TwitterMVVM
//
//  Created by Marcos Alves on 18/10/21.
//

import Foundation
import UIKit

protocol TabCoordinator: Coordinator {
    var rootViewController: UITabBarController { get set }
}

protocol NavigationCoordinator: Coordinator {
    var rootViewController: UINavigationController { get set }
}

protocol Coordinator {
    var childCoordinators: [Coordinator] { get }
    
    func start()
}
