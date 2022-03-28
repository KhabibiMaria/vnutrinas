//
//  AccountView.swift
//  VnutriNas
//
//  Created by Student on 20.12.2021.
//

import SwiftUI

struct AccountView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var push = true
    @State var status = false
    var body: some View {
        VStack(spacing: 0){
            Text("Настройки")
                .font(.custom(customFont, size: 22).weight(.medium))
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity)
                .overlay(  Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "chevron.left")
                        .foregroundColor(Color.black)
                        .font(.system(size: 16))
                    
                }).padding(.leading, 30), alignment: .leading)
                .padding(.top)
                .padding(.bottom, 8)
        ScrollView(.vertical){
            VStack(spacing: 0){
                HStack(spacing: 0){
                    Text("Персональные данные")
                        .foregroundColor(Color.black.opacity(0.6))
                        .font(.custom(customFont, size: 16).weight(.bold))
                    Spacer()
                    Button {
                        
                    } label: {
                        Image("edit-2")
                    }
                    
                }
                .padding(.top, 24)
                .padding(.bottom, 20)
                
                VStack(spacing: 16){
                    VStack(alignment: .leading, spacing: 3){
                       Text("Имя и фамилия")
                            .foregroundColor(Color.black.opacity(0.5))
                        .font(.custom(customFont, size: 12).weight(.regular))
                        Text("Мария Хабиби")
                             .foregroundColor(Color.black)
                         .font(.custom(customFont, size: 14).weight(.semibold))
                    }
                    .padding(.horizontal, 24)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .frame(height: 60)
                    .background(Color.white)
                    .cornerRadius(30)
                    VStack(alignment: .leading, spacing: 3){
                       Text("Email")
                            .foregroundColor(Color.black.opacity(0.5))
                        .font(.custom(customFont, size: 12).weight(.regular))
                        Text("maria.tea@mail.ru")
                             .foregroundColor(Color.black)
                         .font(.custom(customFont, size: 14).weight(.semibold))
                    }
                    .padding(.horizontal, 24)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .frame(height: 60)
                    .background(Color.white)
                    .cornerRadius(30)
                }
                .padding(.bottom, 30)
                HStack(spacing: 0){
                    Text("Пароль")
                        .foregroundColor(Color.black.opacity(0.6))
                        .font(.custom(customFont, size: 16).weight(.bold))
                    Spacer()
                    Button {
                        
                    } label: {
                        Image("edit-2")
                    }
                    
                }
                .padding(.bottom, 20)
                
                VStack(spacing: 16){
                    VStack(alignment: .leading, spacing: 3){
                       Text("Пароль")
                            .foregroundColor(Color.black.opacity(0.5))
                        .font(.custom(customFont, size: 12).weight(.regular))
                        Text("************")
                             .foregroundColor(Color.black)
                         .font(.custom(customFont, size: 14).weight(.semibold))
                    }
                    .padding(.horizontal, 24)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .frame(height: 60)
                    .background(Color.white)
                    .cornerRadius(30)
                }
                .padding(.bottom, 30)
                
                HStack(spacing: 0){
                    Text("Уведомления")
                        .foregroundColor(Color.black.opacity(0.6))
                        .font(.custom(customFont, size: 16).weight(.bold))
                    Spacer()
                }
                .padding(.bottom, 20)
                
                VStack(spacing: 16){
                    HStack{
                       Text("Скидки")
                            .foregroundColor(Color.black)
                        .font(.custom(customFont, size: 12).weight(.regular))
                        Spacer()
                        Toggle(isOn: $push) {
                            EmptyView()
                        }
                        .labelsHidden()
                    }
                    .padding(.horizontal)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .frame(height: 60)
                    .background(Color.white)
                    .cornerRadius(30)
                    HStack{
                       Text("Статус доставки")
                            .foregroundColor(Color.black)
                        .font(.custom(customFont, size: 12).weight(.regular))
                        Spacer()
                        Toggle(isOn: $status) {
                            EmptyView()
                        }
                        .labelsHidden()
                    }
                    .padding(.horizontal, 24)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .frame(height: 60)
                    .background(Color.white)
                    .cornerRadius(30)
                }
                .padding(.bottom, 30)
                
                HStack(spacing: 0){
                    Text("Поддержка")
                        .foregroundColor(Color.black.opacity(0.6))
                        .font(.custom(customFont, size: 16).weight(.bold))
                    Spacer()
                }
                .padding(.bottom, 20)
                
                VStack(spacing: 16){
                    Button {
                        
                    } label: {
                        HStack{
                           Text("Связь с нами")
                                .foregroundColor(Color.black)
                            .font(.custom(customFont, size: 12).weight(.regular))
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(Color.black)
                                .font(.system(size: 16))
                        }
                        .padding(.horizontal, 24)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .frame(height: 60)
                        .background(Color.white)
                        .cornerRadius(30)
                    }

                   
                }
                .padding(.bottom, 30)
            }
            .padding(.horizontal, 30)
        }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(#colorLiteral(red: 0.9688244462, green: 0.9691426158, blue: 0.9782405496, alpha: 1)))
        
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
