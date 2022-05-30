//
//  SwitchSignupButton.swift
//  SotsukenAppNo1
//
//  Created by 中山龍 on 2022/05/31.
//

import SwiftUI

struct LoginSwitchSignupButton: View {
    @ObservedObject var viewModel: LoginViewModel

    var body: some View {
        Button(action: {
            viewModel.onTapSignupText()
        }, label: {
            Text("Sign up")
                .font(.system(size: 17))
        })
    }
}

struct LoginSwitchSignupButton_Previews: PreviewProvider {
    static var previews: some View {
        LoginSwitchSignupButton(viewModel: LoginViewModel())
    }
}
