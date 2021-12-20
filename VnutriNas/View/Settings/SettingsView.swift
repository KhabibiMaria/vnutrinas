//
//  SettingsView.swift
//  VnutriNas
//
//  Created by Student on 20.12.2021.
//

import SwiftUI

struct SettingsView: View {
    @AppStorage("isAuth") var isAuth: Bool = true
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 12){
                        NavigationLink {
                            AccountView()
                        } label: {
                            Text("Аккаунт")
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
                        Text("Заказы")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 60)
                            .foregroundColor(Color.black.opacity(0.5))
                            .frame(maxWidth: .infinity)
                            .frame(height: 66)
                            .background(Color("tf"))
                            .cornerRadius(30)
                    }
                    Button {
                        withAnimation {
                            isAuth = false
                        }
                    } label: {
                        Text("Выход")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 60)
                            .foregroundColor(Color.white)
                            .frame(maxWidth: .infinity)
                            .frame(height: 66)
                            .background(Color(#colorLiteral(red: 0.9058823529, green: 0.2980392157, blue: 0.2352941176, alpha: 0.6)))
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
                }
            }
        }
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
