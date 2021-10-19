//
//  SceneDelegate.swift
//  TwitterMVVM
//
//  Created by Marcos Alves on 13/10/21.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    private var coordinator: AppCoordinator?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else {
            return
        }
        self.coordinator = AppCoordinator(windowScene: scene)
        self.coordinator?.start()
    }
}

