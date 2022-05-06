//
//  SotsukenAppNo1App.swift
//  SotsukenAppNo1
//
//  Created by 中山龍 on 2022/04/22.
//

import SwiftUI
import Firebase

@main
struct SotsukenAppNo1App: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate // 追加
    var body: some Scene {
        WindowGroup {
            ContentView()
            .environmentObject(Login())
            .environmentObject(User())
        }
    }
}

// 下記追加
class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
}
