//
//  SignupViewModel.swift
//  SotsukenAppNo1
//
//  Created by 中山龍 on 2022/04/22.
//

import Foundation

class SignupViewModel: ObservableObject {
    // Model
    @Published var login: Login?

    // Modelを取得する
    func getModels(login: Login) {
        self.login = login
    }

    // Signup画面の入力値
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var confilmPassword: String = ""

    // Loginテキストボタンの挙動
    func onTapLoginText() {
        self.login?.loginSignupFlag = false
    }

    // Signupボタンの挙動
    func onTapSignupButton() {
        self.login?.isLogin = true
    }
}
