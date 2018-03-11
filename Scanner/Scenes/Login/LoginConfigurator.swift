//
//  LoginConfigurator.swift
//  Scanner
//
//  Created by Henrique Santos on 11/03/18.
//  Copyright © 2018 Henrique Santos. All rights reserved.
//

import Foundation

extension LoginViewController: LoginPresenterOutput {}
extension LoginIteractor: LoginViewControllerOutPut {}
extension LoginPresenter: LoginInteractorOutput {}

struct LoginConfigurator {
    
    private init() { }
    
    static func configure(viewController: LoginViewController) {
        
        let service = LoginLocalService()
        let presenter = LoginPresenter(output: viewController)
        let iteractor = LoginIteractor(service: service, output: presenter)
        
        viewController.output = iteractor
    }
}
