//
//  LoginViewController.swift
//  Scanner
//
//  Created by Henrique Santos on 10/03/18.
//  Copyright © 2018 Henrique Santos. All rights reserved.
//

import UIKit

protocol LoginViewControllerOutPut {
    func login(username: String, password: String)
}

class LoginViewController: UIViewController {
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    var output: LoginViewControllerOutPut?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension LoginViewController {
    
    func displayError(errorMessage: String) {
        
    }
    
    func displayLogin() {
        
    }
}
