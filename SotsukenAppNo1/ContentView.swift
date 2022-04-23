//
//  ContentView.swift
//  SotsukenAppNo1
//
//  Created by 中山龍 on 2022/04/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var login: Login
    @EnvironmentObject var user: User

    var body: some View {
        if self.login.isLogin == true {
            if self.user.hasInfo == false {
                // ログイン済みで未初期設定
                InitialSettingView()
            } else {
                // ログイン済みで初期設定済み
                RoomListView()
            }
        } else {
        // 未ログイン(どちらかの画面で進むとログイン済み状態になる)
            if self.login.loginSignupFlag == false {
                LoginView()
                    .environmentObject(login)
            } else {
                SignupView()
                    .environmentObject(login)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Login())
            .environmentObject(User())
        ContentView()
            .environmentObject(Login(isLogin: true))
            .environmentObject(User())
    }
}
