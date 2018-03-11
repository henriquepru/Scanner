//
//  RegisterConfigurator.swift
//  Scanner
//
//  Created by Henrique Santos on 11/03/18.
//  Copyright © 2018 Henrique Santos. All rights reserved.
//

import Foundation

extension RegisterViewController: RegisterPresenterOutput {}
extension RegisterIteractor: RegisterViewControllerOutPut {}
extension RegisterPresenter: RegisterIteractorOutput {}


