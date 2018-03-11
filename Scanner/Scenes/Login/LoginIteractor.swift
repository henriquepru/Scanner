//
//  LoginIteractor.swift
//  Scanner
//
//  Created by Henrique Santos on 10/03/18.
//  Copyright © 2018 Henrique Santos. All rights reserved.
//

import Foundation

protocol LoginInteractorOutput {
    func presentError(error: ServiceError)
    func login()
}

class LoginIteractor {
    private let service: LoginService
    private let output: LoginInteractorOutput
    
    init(service: LoginService, output: LoginInteractorOutput) {
        self.service = service
        self.output = output
    }
    
    func login(username: String, password: String) {
        service.login(username: username,
                      password: password) { [weak self] response in
                        
                        switch response {
                        case .success(_):
                            self?.output.login()
                        case .error(let error):
                            self?.output.presentError(error: error)
                        }
        }
    }
}
