//
//  LoginView.swift
//  SotsukenAppNo1
//
//  Created by 中山龍 on 2022/04/22.
//

import SwiftUI

struct LoginView: View {
    @ObservedObject var loginViewModel = LoginViewModel()
    @EnvironmentObject var login: Login

    var body: some View {
        let width = UIScreen.main.bounds.width

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
            }.padding(EdgeInsets(
                top: 40,
                leading: 0,
                bottom: 60,
                trailing: 0
            ))

            Image("Shark")
                .resizable()
                .scaledToFit()
                .frame(width: width/2)
                .padding(.bottom, 55)
                .opacity(0.7)

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
                .padding(.bottom, 60
                )

            Spacer()

            Button(action: {

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
                    .padding(.bottom, 40)
            })


            Button(action: {
                loginViewModel.changeLoginAndSignup()
            }, label: {
                Text("Sign up")
            })
            .padding(.bottom, 40)

        }.onAppear {
            loginViewModel.getModels(login: login)
        }

    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView().environmentObject(Login())
    }
}
