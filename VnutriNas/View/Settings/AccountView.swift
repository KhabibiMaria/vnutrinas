//
//  AccountView.swift
//  VnutriNas
//
//  Created by Student on 20.12.2021.
//

import SwiftUI

struct AccountView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(spacing: 12){
                HStack(spacing: 33){
                    Image("Ellipse 2")
                        .resizable()
                        .frame(width: 50, height: 50)
                    Text("Мария")
                        .font(.custom(customFont, size: 20).weight(.bold))
                }
                .frame(maxWidth: .infinity)
                .frame(height: 66)
                .cornerRadius(30)
                .overlay(RoundedRectangle(cornerRadius: 30).stroke(lineWidth: 1).foregroundColor(Color.black))
                NavigationLink {
                    
                } label: {
                    Text("Почта")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 60)
                        .foregroundColor(Color.black.opacity(0.5))
                        .frame(maxWidth: .infinity)
                        .frame(height: 66)
                        .background(Color("tf"))
                        .cornerRadius(30)
                }
                NavigationLink {
                    
                } label: {
                    Text("Контакты")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 60)
                        .foregroundColor(Color.black.opacity(0.5))
                        .frame(maxWidth: .infinity)
                        .frame(height: 66)
                        .background(Color("tf"))
                        .cornerRadius(30)
                }
                NavigationLink {
                    
                } label: {
                    Text("Адрес")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 60)
                        .foregroundColor(Color.black.opacity(0.5))
                        .frame(maxWidth: .infinity)
                        .frame(height: 66)
                        .background(Color("tf"))
                        .cornerRadius(30)
                }
            }
            .padding(.horizontal, 30)
            .padding(.top, 50)
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItemGroup(placement: .principal) {
                Text("Настройки")
                    .font(.custom(customFont, size: 22).weight(.bold))
                    .frame(maxWidth: .infinity)
                    .overlay(Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image("arrow-left-circle")
                    }).padding(.leading, 30), alignment: .leading)
            }
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
