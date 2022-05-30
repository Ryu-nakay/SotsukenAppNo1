//
//  LoginView.swift
//  SotsukenAppNo1
//
//  Created by 中山龍 on 2022/04/22.
//

import SwiftUI

struct LoginView: View {
    @ObservedObject var viewModel = LoginViewModel()
    @EnvironmentObject var login: Login

    var body: some View {
        let width = UIScreen.main.bounds.width

        // 画面全体の縦方向
        VStack(spacing: 0) {
            // タイトルと画像
            LoginTitleAndImage(viewModel: viewModel, width: width)

            // 入力欄
            LoginInputFields(viewModel: viewModel, width: width)

            Spacer()

            // ログインボタン
            LoginLoginButton(viewModel: viewModel, width: width)

            Spacer()
                .frame(height: 60)

            // サインアップ切り替えボタン
            LoginSwitchSignupButton(viewModel: viewModel)

            Spacer()
                .frame(height: 40)
        }
        .onAppear {
            // ViewModelにLoginを渡す
            viewModel.getModels(login: login)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView().preferredColorScheme(.light).previewDevice("iPhone 8").environmentObject(Login())
    }
}
