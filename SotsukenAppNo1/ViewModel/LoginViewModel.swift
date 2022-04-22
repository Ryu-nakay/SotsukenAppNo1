//
//  LoginViewModel.swift
//  SotsukenAppNo1
//
//  Created by 中山龍 on 2022/04/22.
//

import Foundation

class LoginViewModel: ObservableObject {
    init(login: Login) {
        self.login = login
    }

    @Published var login: Login
    
}
