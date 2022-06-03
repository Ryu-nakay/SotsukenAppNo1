//
//  SignupViewModel.swift
//  SotsukenAppNo1
//
//  Created by 中山龍 on 2022/04/22.
//

import Foundation
import SwiftUI

class SignupViewModel: ObservableObject {
// ===== Model取得関係 =====
    // Model
    @Published var login: Login?

    // Modelを取得する
    func getModels(login: Login) {
        self.login = login
    }

// ===== アニメーション関係 =====
    @Published var imagePosition: Double = 0

     func imageAnimation(width: Double) {
         withAnimation(.linear(duration: 0.6)) {
             imagePosition = (width/2)-(width*0.25)/2
         }
    }

// ===== 入力欄の値関係 =====
    // Signup画面の入力値
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var confirmPassword: String = ""

// ===== ボタンの挙動関係 =====
    // Loginテキストボタンの挙動
    func onTapLoginText() {
        self.login?.signupFlag = false
    }

    // Signupボタンの挙動
    func onTapSignupButton() {
        self.login?.isLogin = true
    }
}
