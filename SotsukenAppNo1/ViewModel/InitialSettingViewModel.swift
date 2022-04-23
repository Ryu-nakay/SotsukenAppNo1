//
//  InitialSettingViewModel.swift
//  SotsukenAppNo1
//
//  Created by 中山龍 on 2022/04/23.
//

import Foundation

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
}
