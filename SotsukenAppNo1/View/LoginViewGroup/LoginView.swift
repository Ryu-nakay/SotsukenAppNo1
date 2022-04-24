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

            // タイトルとサメイラスト
            VStack(spacing: 0) {
                // タイトル＜Log in＞
                HStack {
                    Text("Log in")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .italic()
                        .padding(.leading, width*0.1)

                    Spacer()
                }

                // サメのイラスト
                Group {
                    Image("Shark")
                        .resizable()
                        .scaledToFit()
                        .frame(width: width*0.5)
                        .opacity(0.4)
                }
                .frame(height: UIScreen.main.bounds.height*0.2)
            }

            // サメの下 - Emailフィールド
            Spacer()
                .frame(height: 80)

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

            Spacer()

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

                Spacer()
                    .frame(height: 60)

                // ボタン ＜Sign up＞
                Button(action: {
                    viewModel.onTapSignupText()
                }, label: {
                    Text("Sign up")
                        .font(.system(size: 17))
                })

                Spacer()
                    .frame(height: 40)
            }

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
