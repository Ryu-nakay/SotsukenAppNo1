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

            // タイトルとサメイラスト
            VStack(spacing: 0) {
                // タイトル＜Sign Up＞
                HStack {
                    Text("Sign Up")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .italic()
                        .padding(.leading, width*0.1)

                    Spacer()
                }

                // サメのひれのイラスト
                Group {
                    Image("SharkFin")
                        .resizable()
                        .scaledToFit()
                        .frame(width: width*0.25)
                        .opacity(0.7)
                }
                .frame(height: UIScreen.main.bounds.height*0.2)
            }

            // サメのひれの下 - Emailフィールド
            Spacer()
                .frame(height: 80)

            // 入力欄
            VStack(spacing: 0) {
                // テキストフィールド　＜Email＞
                VStack(alignment: .leading, spacing: 0) {
                    Text("Email")

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

                // Passwordフィールド - Confirm Passwordフィールド
                Spacer()
                    .frame(height: 20)

                // テキストフィールド ＜Password＞
                VStack(alignment: .leading, spacing: 0) {
                    Text("Confirm Password")
                    SecureField("", text: $viewModel.confirmPassword)
                        .frame(width: width*0.8, height: 24)
                        .cornerRadius(24)
                        .overlay(
                            RoundedRectangle(cornerRadius: 24)
                                .stroke(.black, lineWidth: 1.0)
                    )
                }
            }

            Spacer()

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

                Spacer()
                    .frame(height: 60)

                // ボタン ＜Log in＞
                Button(action: {
                    viewModel.onTapLoginText()
                }, label: {
                    Text("Log in")
                        .font(.system(size: 17))
                })

                Spacer()
                    .frame(height: 40)
            }

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
