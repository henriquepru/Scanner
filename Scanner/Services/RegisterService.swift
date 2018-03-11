//
//  RegisterService.swift
//  Scanner
//
//  Created by Henrique Santos on 11/03/18.
//  Copyright © 2018 Henrique Santos. All rights reserved.
//

import Foundation

protocol RegisterService {
    func register(username: String,
                  password: String,
                  completion: @escaping ((ServiceResponse<User>) -> ()))
}

struct RegisterLocalService: RegisterService {
    
    func register(username: String,
                  password: String,
                  completion: @escaping ((ServiceResponse<User>) -> ())) {
        let user = User(id: 1, userName: "", password: "")
        completion(.success(user))
    }
}

