//
//  LoginService.swift
//  Scanner
//
//  Created by Henrique Santos on 10/03/18.
//  Copyright © 2018 Henrique Santos. All rights reserved.
//

import Foundation

protocol LoginService {
    func login(username: String,password: String, completion: @escaping ((ServiceResponse<User>) -> ()))
}

struct LoginLocalService: LoginService {
    
    func login(username: String,
               password: String,
               completion: @escaping ((ServiceResponse<User>) -> ())) {
        
        let user = User(id: 1, userName: "henrique", password: "!@#!@#!@#")
        completion(.success(user))
    }
}
