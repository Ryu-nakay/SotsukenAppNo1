//
//  SettingView.swift
//  SotsukenAppNo1
//
//  Created by 中山龍 on 2022/04/24.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        NavigationView {
            ZStack {
                // 背景
                Color(.gray)
                    .opacity(0.2)

                VStack {
                    SettingCell(view: Button(action: {

                    }, label: {
                        Text("Log out")
                            .foregroundColor(.red)
                    }))
                    Spacer()
                }
                .frame(width: UIScreen.main.bounds.width)

            }.navigationBarTitle("Setting", displayMode: .inline)
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
