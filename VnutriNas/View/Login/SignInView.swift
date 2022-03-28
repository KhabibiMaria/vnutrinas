//
//  SignInView.swift
//  VnutriNas
//
//  Created by Student on 20.12.2021.
//

import SwiftUI

struct SignInView: View {
    @State var email: String = ""
    @State var password: String = ""
    @StateObject var loginVM = LoginViewModel()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0){
                Text("Авторизуйтесь")
                    .font(.custom(customFont, size: 25).weight(.bold))
                    .padding(.top, 97)
                Spacer(minLength: 50)
                VStack(spacing: 28){
                    CustomTextField(text: $loginVM.email, isSecure: false, title: "Почта")
                    CustomTextField(text: $loginVM.password, isSecure: true, title: "Пароль")
                }
                
                Spacer()
                VStack(spacing: 20) {
                    Button {
                        loginVM.checkAuth()
                    } label: {
                        Text("Войти")
                            .foregroundColor(Color.white)
                            .font(.custom(customFont, size: 25).weight(.bold))
                            .frame(maxWidth: .infinity)
                            .frame(height: 55)
                            .background(Color("green"))
                            .cornerRadius(30)
                            .padding(.horizontal, 30)
                    }
                    Button {
                        
                    } label: {
                        Text("Забыли пароль?")
                            .foregroundColor(Color(#colorLiteral(red: 0.7529411765, green: 0.7529411765, blue: 0.7529411765, alpha: 1)))
                            .font(.custom(customFont, size: 15).weight(.medium))
                    }
                    
                }
                .padding(.bottom, 9)
                Image("Group 28")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal, 8)
                    .overlay(NavigationLink(destination: {
                        
                        SignUpView()
                            .environmentObject(loginVM)
                    }, label: {
                        Text("Регистрация")
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
            .alert(isPresented: $loginVM.showError) {
                Alert(title: Text("Ошибка"), message: Text(loginVM.errorMessage), dismissButton: Alert.Button.default(Text("ОК")))
            }
        }
        
    }
}



