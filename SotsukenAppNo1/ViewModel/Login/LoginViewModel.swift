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
// ===== Model取得関係 =====

    // Model
    @Published var login: Login?

    // Modelを取得する
    func getModels(login: Login) {
        self.login = login
    }

// ===== アニメーション関係 =====

    // 画像の大きさ
    @Published var imageScale = 0.1
    // 画像の位置(Spacer()の幅を変化させて画像を押す)
    @Published var imagePosition = 0.0

    // 画面描画時にアニメーションを実施
    func imageAnimation(width: Double) {
        withAnimation(.easeInOut(duration: 1)) {
            imagePosition = (width/2)-(width*0.5)/2
            imageScale = 1.0
        }
    }


// ===== 入力欄の値関係 =====

    // Login画面の入力値
    @Published var email: String = ""
    @Published var password: String = ""


// ===== ボタンの挙動関係 =====
    // Loginボタンの挙動
    func onTapLoginButton() {
        // ログイン処理
        self.login?.tryToLogin(email: email, password: password)
    }

    // Signupテキストボタンの挙動
    func onTapSignupText() {
        self.login?.signupFlag = true
    }
}
