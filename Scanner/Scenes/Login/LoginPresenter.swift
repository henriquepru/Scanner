//
//  LoginPresenter.swift
//  Scanner
//
//  Created by Henrique Santos on 10/03/18.
//  Copyright © 2018 Henrique Santos. All rights reserved.
//

import Foundation

protocol LoginPresenterOutput: class {
    func displayError(errorMessage: String)
}

struct LoginPresenter {
    
    private weak var output: LoginPresenterOutput?
    
    init(output: LoginPresenterOutput) {
        self.output = output
    }
    
    func presentError(error: ServiceError) {
        output?.displayError(errorMessage: error.localizedDescription)
    }
    
    func login() {
        
    }
}
