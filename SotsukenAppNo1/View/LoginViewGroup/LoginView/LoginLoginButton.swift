//
//  LoginButton.swift
//  SotsukenAppNo1
//
//  Created by 中山龍 on 2022/05/27.
//

import SwiftUI

struct LoginLoginButton: View {
    @ObservedObject var viewModel: LoginViewModel
    var width: Double

    var body: some View {
        VStack(spacing: 0) {
            // ボタン ＜Log in＞
            Button(action: {
                viewModel.onTapLoginButton()
            }, label: {
                Text("Log in")
                    .fontWeight(.semibold)
                    .frame(width: width*0.8, height: width*0.8*0.14)
                    .foregroundColor(.black)
                    .background(.white)
                    .cornerRadius(24)
                    .overlay(
                        RoundedRectangle(cornerRadius: 24)
                            .stroke(.black, lineWidth: 1.0)
                    )
                    .shadow(color: .black.opacity(0.1), radius: 5, x: 10, y: 10)
            })
        }
    }
}

struct LoginLoginButton_Previews: PreviewProvider {
    static var previews: some View {
        LoginLoginButton(viewModel: LoginViewModel(), width: 300)
    }
}
