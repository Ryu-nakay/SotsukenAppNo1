//
//  SotsukenAppNo1App.swift
//  SotsukenAppNo1
//
//  Created by 中山龍 on 2022/04/22.
//

import SwiftUI

@main
struct SotsukenAppNo1App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
            .environmentObject(Login())
            .environmentObject(User())
        }
    }
}
