//
//  SignupView.swift
//  SotsukenAppNo1
//
//  Created by 中山龍 on 2022/04/22.
//

import SwiftUI

struct SignupView: View {
    @ObservedObject var viewModel = SignupViewModel()
    @EnvironmentObject var login: Login

    var body: some View {
        let width = UIScreen.main.bounds.width

        // 画面全体の縦方向
        VStack(spacing: 0) {

            SignupTitleAndImage(viewModel: viewModel, width: width)

            SignUpInputFields(viewModel: viewModel, width: width)

            Spacer()

            SignUpButton(viewModel: viewModel, width: width)

        }.onAppear {
            // ViewModelにLoginを渡す
            viewModel.getModels(login: login)
        }
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView().environmentObject(Login())
    }
}
