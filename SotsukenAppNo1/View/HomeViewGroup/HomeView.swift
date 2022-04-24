//
//  HomeView.swift
//  SotsukenAppNo1
//
//  Created by 中山龍 on 2022/04/24.
//

import SwiftUI

struct HomeView: View {
    init() {
        UITabBar.appearance().backgroundColor = UIColor.white
    }

    var body: some View {
        TabView {
            RoomListView()
                .tabItem {
                    Image(systemName: "bubble.right")
                }
            SettingView()
                .tabItem {
                    Image(systemName: "gearshape")
                }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
