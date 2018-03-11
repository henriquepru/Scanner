//
//  RegisterPresenter.swift
//  Scanner
//
//  Created by Henrique Santos on 11/03/18.
//  Copyright © 2018 Henrique Santos. All rights reserved.
//

import Foundation

protocol RegisterPresenterOutput: class {
    func displayError(errorMessage: String)
    func displayRegister(successMessage: String)
}

struct RegisterPresenter {
    private weak var output: RegisterPresenterOutput?
    
    init(output: RegisterPresenterOutput) {
        self.output = output
    }
    
    func presentError(error: ServiceError) {
        output?.displayError(errorMessage: error.localizedDescription)
    }
    
    func register(user: User) {
        output?.displayRegister(successMessage: "Usuário criado com sucesso!")
    }
}
