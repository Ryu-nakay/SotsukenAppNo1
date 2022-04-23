//
//  InitialSettingViewModel.swift
//  SotsukenAppNo1
//
//  Created by 中山龍 on 2022/04/23.
//

import Foundation

class InitialSettingViewModel: ObservableObject {
    // InitialSetting画面の入力値
    @Published var userName: String = ""
    @Published var userIdentifier: String = ""
}
