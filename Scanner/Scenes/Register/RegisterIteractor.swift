//
//  RegisterIteractor.swift
//  Scanner
//
//  Created by Henrique Santos on 11/03/18.
//  Copyright © 2018 Henrique Santos. All rights reserved.
//

import Foundation

protocol RegisterIteractorOutput {
    func presentError(error: ServiceError)
    func register(user: User)
}

class RegisterIteractor {
    private let service: RegisterService
    private let output: RegisterIteractorOutput
    
    init(service: RegisterService, output: RegisterIteractorOutput) {
        self.service = service
        self.output = output
    }
    
    func register(username: String, password: String) {
        service.register(username: username,
                         password: password) { [weak self] response in
                            
                            switch response {
                            case .success(let user):
                                self?.output.register(user: user)
                            case .error(let error):
                                self?.output.presentError(error: error)
                            }
        }
    }
}
