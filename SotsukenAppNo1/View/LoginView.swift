//
//  LoginView.swift
//  SotsukenAppNo1
//
//  Created by 中山龍 on 2022/04/22.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        let width = UIScreen.main.bounds.width
        let height = UIScreen.main.bounds.height
        ZStack {
            VStack {
                HStack {
                    Spacer()
                    Text("Log in")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .italic()
                    Spacer()
                    Spacer()
                    Spacer()
                }

                Image("Shark")
                    .resizable()
                    .scaledToFit()
                    .frame(width: width/2)
                    .padding(.bottom, 60)

                TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/,text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .frame(width: width*0.9)
                    .cornerRadius(24)
                    .overlay(
                        RoundedRectangle(cornerRadius: 24)
                            .stroke(.black, lineWidth: 1.0)
                    )
                    .padding(.bottom, 20)

                TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/,text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .frame(width: width*0.9)
                    .cornerRadius(24)
                    .overlay(
                        RoundedRectangle(cornerRadius: 24)
                            .stroke(.black, lineWidth: 1.0)
                    )
                    .padding(.bottom, 60
                    )

                Button(action: {

                }) {
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
                        .padding(.bottom, 40)
                }

                Button(action: {

                }) {
                    Text("Sign up")

                }
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
