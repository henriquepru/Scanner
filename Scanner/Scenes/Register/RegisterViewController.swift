//
//  RegisterViewController.swift
//  Scanner
//
//  Created by Henrique Santos on 11/03/18.
//  Copyright © 2018 Henrique Santos. All rights reserved.
//

import UIKit

protocol RegisterViewControllerOutPut {
    func register(username: String, password: String)
}

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    
    var output: RegisterViewControllerOutPut?
    
    func displayError(errorMessage: String) {
        
    }
    
    func displayRegister(successMessage: String) {
        
    }
}
