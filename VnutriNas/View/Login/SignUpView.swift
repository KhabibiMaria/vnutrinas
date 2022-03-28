//
//  SignUpView.swift
//  VnutriNas
//
//  Created by Student on 20.12.2021.
//

import SwiftUI

struct SignUpView: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var loginVM: LoginViewModel

    var body: some View {
        VStack(spacing: 0){
            Text("Создайте аккаунт")
                .font(.custom(customFont, size: 25).weight(.bold))
                .padding(.top, 97)
            Spacer(minLength: 50)
            VStack(spacing: 28){
                CustomTextField(text: $loginVM.email, isSecure: false, title: "Почта")
                CustomTextField(text: $loginVM.password, isSecure: true, title: "Пароль")
                CustomTextField(text: $loginVM.rePass, isSecure: true, title: "Повторите пароль")
            }
           
            Spacer()
            Button {
                loginVM.checkSignUp()
            } label: {
                Text("Зарегистрироваться")
                    .foregroundColor(Color.white)
                    .font(.custom(customFont, size: 25).weight(.bold))
                    .frame(maxWidth: .infinity)
                    .frame(height: 55)
                    .background(Color("green"))
                    .cornerRadius(30)
                    .padding(.horizontal, 30)
            }
            .padding(.bottom, 23)
            Image("Group 28")
                .resizable()
                .scaledToFit()
                .padding(.horizontal, 8)
                .overlay(Button(action: {
                    
                }, label: {
                    Text("Помощь")
                        .foregroundColor(Color("green"))
                        .font(.custom(customFont, size: 20).weight(.medium))
                })
                            .padding(.bottom, 32)
                         , alignment: .bottom)
        }
        .overlay(
            ZStack{
            if loginVM.isLoad == true {
                ProgressView()
            }
            }
        )
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .overlay(
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image("arrow-left-circle")
            })
                .padding(.top, 15)
                .padding(.leading, 21)
            ,alignment: .topLeading
        )
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
