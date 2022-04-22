//
//  ContentView.swift
//  SotsukenAppNo1
//
//  Created by 中山龍 on 2022/04/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var login: Login

    var body: some View {
        if self.login.isLogin == true {
            RoomListView()
        } else {
            if self.login.loginSignupFlag == false {
                LoginView().environmentObject(login)
            } else {
                SignupView().environmentObject(login)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(Login())
        ContentView().environmentObject(Login(isLogin: true))
    }
}
