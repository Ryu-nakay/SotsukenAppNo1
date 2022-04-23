//
//  User.swift
//  SotsukenAppNo1
//
//  Created by 中山龍 on 2022/04/23.
//

import Foundation

class User: ObservableObject {
    // 初期設定が必要かどうか
    @Published var hasInfo: Bool = false

    // 初期設定値
    @Published var userName: String?
    @Published var userIdentifier: String?
}
