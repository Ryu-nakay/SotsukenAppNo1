//
//  Login.swift
//  SotsukenAppNo1
//
//  Created by 中山龍 on 2022/04/22.
//

import Foundation
import UIKit

class Login: ObservableObject {
    init(isLogin: Bool = false) {
        self.isLogin = isLogin
    }

    // ログイン済みかどうかを判定するフラグ
    @Published var isLogin: Bool
    // ログインorサインアップを切り替えるフラグ
    // false:ログイン true:サインアップ
    @Published var loginSignupFlag = false
}
