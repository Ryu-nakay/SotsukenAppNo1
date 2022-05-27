//
//  LoginTitleAndImage.swift
//  SotsukenAppNo1
//
//  Created by 中山龍 on 2022/05/27.
//

import SwiftUI

// Login画面のタイトルと画像
struct LoginTitleAndImage: View {
    @ObservedObject var viewModel: LoginViewModel
    var width: Double

    var body: some View {
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
            HStack {
                Spacer()

                Group {
                    Image("Shark")
                        .resizable()
                        .scaledToFit()
                        .frame(width: width*0.5)
                        .opacity(0.4)
                        .scaleEffect(viewModel.imageScale)
                        .onAppear {
                            viewModel.imageAnimation(width: width)
                        }
                }
                .frame(height: UIScreen.main.bounds.height*0.2)

                Spacer()
                    .frame(width: viewModel.imagePosition)
            }

            // サメの下のスペース
            Spacer()
                .frame(height: 80)
        }
    }
}

struct LoginTitleAndImage_Previews: PreviewProvider {
    static var previews: some View {
        LoginTitleAndImage(viewModel: LoginViewModel(), width: Double(300))
    }
}
