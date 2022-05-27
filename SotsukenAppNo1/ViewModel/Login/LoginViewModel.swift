//
//  LoginViewModel.swift
//  SotsukenAppNo1
//
//  Created by 中山龍 on 2022/04/22.
//

import Foundation
import SwiftUI

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

    @Published var imageScale = 0.1
    @Published var imagePosition = 0.0

    func imageAnimation(width: Double) {
        withAnimation(.easeInOut(duration: 1)) {
            imagePosition = (width/2)-(width*0.5)/2
            imageScale = 1.0
        }
    }

    // Login画面の入力値
    @Published var email: String = ""
    @Published var password: String = ""

    // Signupテキストボタンの挙動
    func onTapSignupText() {
        self.login?.signupFlag = true
    }

    // Loginボタンの挙動
    func onTapLoginButton() {
        self.login?.isLogin = true
    }
}
