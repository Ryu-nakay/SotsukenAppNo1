//
//  SignupView.swift
//  SotsukenAppNo1
//
//  Created by 中山龍 on 2022/04/22.
//

import SwiftUI

struct SignupView: View {
    var body: some View {
        let width = UIScreen.main.bounds.width
        ZStack {
            VStack {
                HStack {
                    Spacer()
                    Text("Sign Up")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .italic()
                    Spacer()
                    Spacer()
                    Spacer()
                }

                Image("SharkFin")
                    .resizable()
                    .scaledToFit()
                    .frame(width: width/3)
                    .padding(.bottom, 60)

                TextField(" ✉️Email", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .frame(width: width*0.9)
                    .cornerRadius(24)
                    .overlay(
                        RoundedRectangle(cornerRadius: 24)
                            .stroke(.black, lineWidth: 1.0)
                    )
                    .padding(.bottom, 20)

                SecureField(" 🔒Password", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .frame(width: width*0.9)
                    .cornerRadius(24)
                    .overlay(
                        RoundedRectangle(cornerRadius: 24)
                            .stroke(.black, lineWidth: 1.0)
                    )
                    .padding(.bottom, 20)

                SecureField(" 🔒Confilm Password", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .frame(width: width*0.9)
                    .cornerRadius(24)
                    .overlay(
                        RoundedRectangle(cornerRadius: 24)
                            .stroke(.black, lineWidth: 1.0)
                    )
                    .padding(.bottom, 60)

                Button(action: {

                }) {
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
                }
            }
        }
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
