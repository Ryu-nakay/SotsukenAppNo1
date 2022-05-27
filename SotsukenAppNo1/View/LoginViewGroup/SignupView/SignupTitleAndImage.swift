//
//  SignupTitleAndImage.swift
//  SotsukenAppNo1
//
//  Created by 中山龍 on 2022/05/27.
//

import SwiftUI

// SignUp画面のタイトルとイメージ
struct SignupTitleAndImage: View {
    @ObservedObject var viewModel: SignupViewModel
    var width: Double

    var body: some View {
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
            HStack {
                Spacer()

                Group {
                    Image("SharkFin")
                        .resizable()
                        .scaledToFit()
                        .frame(width: width*0.25)
                        .opacity(0.7)
                        .onAppear {
                            viewModel.imageAnimation(width: width)
                        }
                }
                .frame(height: UIScreen.main.bounds.height*0.2)

                Spacer()
                    .frame(width: viewModel.imagePosition)
            }
            // サメのひれの下 - Emailフィールド
            Spacer()
                .frame(height: 80)
        }
    }
}

struct SignupTitleAndImage_Previews: PreviewProvider {
    static var previews: some View {
        SignupTitleAndImage(viewModel: SignupViewModel(), width: 300)
    }
}
