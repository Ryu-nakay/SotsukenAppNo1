//
//  SignUpButton.swift
//  SotsukenAppNo1
//
//  Created by 中山龍 on 2022/05/27.
//

import SwiftUI

// SignUpボタン
struct SignupSignupButton: View {
    @ObservedObject var viewModel: SignupViewModel
    var width: Double

    var body: some View {
        VStack(spacing: 0) {
            // ボタン ＜Sign Up＞
            Button(action: {
                viewModel.onTapSignupButton()
            }, label: {
                Text("Sign Up")
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

struct SignupSignupButton_Previews: PreviewProvider {
    static var previews: some View {
        SignupSignupButton(viewModel: SignupViewModel(), width: 300)
    }
}
