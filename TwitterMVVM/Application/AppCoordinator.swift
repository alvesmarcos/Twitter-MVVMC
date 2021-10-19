//
//  AppCoordinator.swift
//  TwitterMVVM
//
//  Created by Marcos Alves on 18/10/21.
//

import Foundation
import UIKit

class AppCoordinator: Coordinator {
    private let window: UIWindow
    
    var childCoordinators = [Coordinator]()
    
    init(windowScene: UIWindowScene) {
        self.window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        self.window.windowScene = windowScene
    }
    
    func start() {
        let coordinator = MainCoordinator()
        coordinator.start()
        self.window.rootViewController = coordinator.rootViewController
        self.window.makeKeyAndVisible()
    }
}
