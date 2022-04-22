//
//  LoginViewModel.swift
//  SotsukenAppNo1
//
//  Created by 中山龍 on 2022/04/22.
//

import Foundation

/*
 【LoginViewModel】
 保有モデル
 ・login
 */

class LoginViewModel: ObservableObject {
    // Model
    @Published var login: Login?

    // Modelを取得する
    func getModels(login: Login) {
        self.login = login
    }

    // Login画面の入力値
    @Published var email: String = ""
    @Published var password: String = ""

    // LoginViewとSignupViewの切り替え
    func changeLoginAndSignup() {
        self.login?.loginSignupFlag.toggle()
    }
}
