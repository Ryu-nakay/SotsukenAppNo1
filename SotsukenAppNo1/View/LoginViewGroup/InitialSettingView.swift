//
//  InitialSettingView.swift
//  SotsukenAppNo1
//
//  Created by 中山龍 on 2022/04/22.
//

import SwiftUI

struct InitialSettingView: View {
    @EnvironmentObject var user: User
    @ObservedObject var viewModel = InitialSettingViewModel()

    var body: some View {
        let width = UIScreen.main.bounds.width

        // 画面全体の縦方向
        VStack(spacing: 0) {

            // タイトルとサメイラスト
            VStack(spacing: 0) {
                // タイトル＜Initial Setting＞
                HStack {
                    Text("Initial Setting")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .italic()
                        .padding(.leading, width*0.1)

                    Spacer()
                }

                // 人のイラスト
                Group {
                    Image(systemName: "person.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: width*0.25)
                        .opacity(0.6)
                        .rotation3DEffect(Angle(degrees: viewModel.imageDegrees), axis: (x: CGFloat(0), y: CGFloat(0.5), z: CGFloat(0)),perspective: 0)
                        .onAppear {
                            viewModel.imageAnimation()
                        }
                        .onTapGesture {
                            viewModel.imageAnimation()
                        }
                }
                .frame(height: UIScreen.main.bounds.height*0.2)
            }

            // サメのひれの下 - UserNameフィールド のスペース
            Spacer()
                .frame(height: 80)

            // 入力欄
            VStack(spacing: 0) {
                // テキストフィールド　＜User Name＞
                VStack(alignment: .leading, spacing: 0) {
                    Text("User Name")

                    TextField("", text: $viewModel.userName)
                        .frame(width: width*0.8, height: 24)
                        .cornerRadius(24)
                        .overlay(
                            RoundedRectangle(cornerRadius: 24)
                                .stroke(.black, lineWidth: 1.0)
                    )
                }

                // UserNameフィールド - User Identifierフィールド のスペース
                Spacer()
                    .frame(height: 20)

                // テキストフィールド ＜User Identifier＞
                VStack(alignment: .leading, spacing: 0) {
                    Text("User Identifier")
                    SecureField("", text: $viewModel.userIdentifier)
                        .frame(width: width*0.8, height: 24)
                        .cornerRadius(24)
                        .overlay(
                            RoundedRectangle(cornerRadius: 24)
                                .stroke(.black, lineWidth: 1.0)
                    )
                }

                // User Identifierフィールド下 のスペース
                Spacer()
                    .frame(height: 20)

                // Sign upとの見た目を合わせるための空白
                Spacer()
                    .frame(height: 24)
            }

            Spacer()

            // ボタンのグループ
            VStack(spacing: 0) {
                // ボタン ＜Save＞
                Button(action: {
                    viewModel.onTapSave()
                }, label: {
                    Text("Save")
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

                // Login-Signupボタンの高さをあける
                Spacer()
                    .frame(height: 17)

                Spacer()
                    .frame(height: 40)
            }

        }.onAppear {
            // ViewModelにLoginを渡す
            viewModel.getModels(user: user)
        }
    }
}

struct InitialSettingView_Previews: PreviewProvider {
    static var previews: some View {
        InitialSettingView()
            .environmentObject(User())
    }
}
