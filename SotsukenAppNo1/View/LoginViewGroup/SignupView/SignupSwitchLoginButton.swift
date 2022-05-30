//
//  SignupSwitchLoginButton.swift
//  SotsukenAppNo1
//
//  Created by 中山龍 on 2022/05/31.
//

import SwiftUI

struct SignupSwitchLoginButton: View {
    @ObservedObject var viewModel: SignupViewModel

    var body: some View {
        Button(action: {
            viewModel.onTapLoginText()
        }, label: {
            Text("Log in")
                .font(.system(size: 17))
        })
    }
}

struct SignupSwitchLoginButton_Previews: PreviewProvider {
    static var previews: some View {
        SignupSwitchLoginButton(viewModel: SignupViewModel())
    }
}
