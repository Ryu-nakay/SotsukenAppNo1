//
//  LoginGroupViewModel.swift
//  SotsukenAppNo1
//
//  Created by 中山龍 on 2022/05/31.
//

import Foundation

class LoginGroupViewModel: ObservableObject {
    @Published var login: Login?
    @Published var user: User?

    func getModel(login: Login, user: User) {
        self.login = login
        self.user = user

        self.login!.$isLogin.assign(to: &self.$isLogin)
        self.user!.$hasInfo.assign(to: &self.$hasInfo)
        self.login!.$signupFlag.assign(to: &self.$signupFlag)

        self.login!.$isLoading.assign(to: &self.$isLoading)

    }

    @Published var isLogin = false
    @Published var hasInfo = false
    @Published var signupFlag = true

    @Published var isLoading = false
}
