//
//  UserResponse.swift
//  Scanner
//
//  Created by Henrique Santos on 10/03/18.
//  Copyright © 2018 Henrique Santos. All rights reserved.
//

import Foundation

enum ServiceError: Error {
    
    case fetchError
    case unknown(Error)
    
    var localizedDescription: String {
        switch self {
        case .fetchError:
            return "Ocorreu ao buscar"
        case .unknown:
            return "Ocorreu um erro desconhecido"
        }
    }
}

enum ServiceResponse<T> {

    case success(T)
    case error(ServiceError)
}
