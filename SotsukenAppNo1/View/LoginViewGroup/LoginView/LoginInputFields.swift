//
//  LoginInputFields.swift
//  SotsukenAppNo1
//
//  Created by 中山龍 on 2022/05/27.
//

import SwiftUI

struct LoginInputFields: View {
    @ObservedObject var viewModel: LoginViewModel
    var width: Double

    var body: some View {
        // 入力欄
        VStack(spacing: 0) {
            VStack(alignment: .leading, spacing: 0) {
                Text("Email")

                // テキストフィールド　＜Email＞
                TextField("", text: $viewModel.email)
                    .frame(width: width*0.8, height: 24)
                    .cornerRadius(24)
                    .overlay(
                        RoundedRectangle(cornerRadius: 24)
                            .stroke(.black, lineWidth: 1.0)
                    )
            }

            // Emailフィールド - Passwordフィールド
            Spacer()
                .frame(height: 20)

            // テキストフィールド ＜Password＞
            VStack(alignment: .leading, spacing: 0) {
                Text("Password")

                SecureField("", text: $viewModel.password)
                    .frame(width: width*0.8, height: 24)
                    .cornerRadius(24)
                    .overlay(
                        RoundedRectangle(cornerRadius: 24)
                            .stroke(.black, lineWidth: 1.0)
                )
            }

            // Passwordフィールド下
            Spacer()
                .frame(height: 20)

            // Sign upとの見た目を合わせるための空白
            Spacer()
                .frame(height: 24)
        }
    }
}

struct LoginInputFields_Previews: PreviewProvider {
    static var previews: some View {
        LoginInputFields(viewModel: LoginViewModel(), width: 300)
    }
}
