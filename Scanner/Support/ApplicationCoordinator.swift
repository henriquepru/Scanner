//
//  LoginCoordinator.swift
//  Scanner
//
//  Created by Henrique Santos on 11/03/18.
//  Copyright © 2018 Henrique Santos. All rights reserved.
//

import UIKit

struct ApplicationCoordinator: Coordinator {
    
    private let window: UIWindow
    private let rootController: UINavigationController
    private let loginCoordinator: LoginCoordinator
    
    init(window: UIWindow) {
        self.window = window
        rootController = UINavigationController()
        loginCoordinator = LoginCoordinator(navigation: rootController)
    }
    
    func start() {
        window.rootViewController = rootController
        window.makeKeyAndVisible()
        loginCoordinator.start()
    }
}
