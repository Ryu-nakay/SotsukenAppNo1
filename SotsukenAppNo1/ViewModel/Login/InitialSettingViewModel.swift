//
//  InitialSettingViewModel.swift
//  SotsukenAppNo1
//
//  Created by 中山龍 on 2022/04/23.
//

import Foundation
import SwiftUI

class InitialSettingViewModel: ObservableObject {
    // Model
    @Published var user: User?

    // Modelを取得する
    func getModels(user: User) {
        self.user = user
    }

    // InitialSetting画面の入力値
    @Published var userName: String = ""
    @Published var userIdentifier: String = ""

    // Saveボタンの挙動
    func onTapSave() {
        // 仮の処理
        self.user?.hasInfo = true
    }

    // 画像の角度
    @Published var imageDegrees: Double = 0.0
    // 画像のアニメーション
    func imageAnimation() {
        self.imageDegrees = 0
        withAnimation(.easeInOut(duration: 1)) {
            self.imageDegrees = 360*4
        }
    }
}
