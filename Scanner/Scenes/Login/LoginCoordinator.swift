//
//  LoginCoordinator.swift
//  Scanner
//
//  Created by Henrique Santos on 11/03/18.
//  Copyright © 2018 Henrique Santos. All rights reserved.
//

import UIKit

protocol LoginCoordinatorDelegate {
    func didLogin()
}

struct LoginCoordinator: Coordinator {
    
    private let navigation: UINavigationController
    private var loginController: LoginViewController?

    init(navigation: UINavigationController) {
        self.navigation = navigation
    }
    
    func start() {
        let controller = UIStoryboard(name: "Login", bundle: Bundle.main)
            .instantiateInitialViewController() as? LoginViewController ?? LoginViewController()
        LoginConfigurator.configure(viewController: controller)
        navigation.pushViewController(controller, animated: false)
    }
}

extension LoginCoordinator: LoginCoordinatorDelegate {
    func didLogin() {
        
    }
}
