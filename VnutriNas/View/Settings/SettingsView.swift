//
//  SettingsView.swift
//  VnutriNas
//
//  Created by Student on 20.12.2021.
//

import SwiftUI

struct SettingsView: View {
    @AppStorage("isAuth") var isAuth: Bool = true
    @State var showAddressView = false
    @State var showSettingView = false
    var body: some View {
        NavigationView{
            VStack(spacing: 44){
                HStack(spacing: 62){
                    Image("Ellipse 2")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .padding(.leading, 25)
                    Text("maria.tea@mail.ru")
                        .font(.custom(customFont, size: 16).weight(.thin))
                        .colorMultiply(.black)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .frame(height: 66)
                .cornerRadius(30)
                .overlay(RoundedRectangle(cornerRadius: 30).stroke(lineWidth: 1).foregroundColor(Color.black))
                VStack(spacing: 34){
                    Button {
                        showAddressView = true
                    } label: {
                        Text("Адрес и способ оплаты")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 30)
                            .foregroundColor(Color.black.opacity(0.5))
                            .frame(maxWidth: .infinity)
                            .frame(height: 55)
                            .background(Color("tf"))
                            .cornerRadius(30)
                    }
                    .fullScreenCover(isPresented: $showAddressView) {
                        AddressView()
                    }
                    NavigationLink {
                        OrderView()
                    } label: {
                        Text("Заказы")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 30)
                            .foregroundColor(Color.black.opacity(0.5))
                            .frame(maxWidth: .infinity)
                            .frame(height: 55)
                            .background(Color("tf"))
                            .cornerRadius(30)
                    }
                    Button {
                        showSettingView = true
                    } label: {
                        Text("Настройки")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 30)
                            .foregroundColor(Color.black.opacity(0.5))
                            .frame(maxWidth: .infinity)
                            .frame(height: 55)
                            .background(Color("tf"))
                            .cornerRadius(30)
                        
                    }
                    .fullScreenCover(isPresented: $showSettingView) {
                        AccountView()
                    }
                }
                Spacer()
                Button {
                    withAnimation {
                        isAuth = false
                    }
                } label: {
                    Text("Выход")
                        .frame(maxWidth: .infinity, alignment: .center)
                        .foregroundColor(Color.white)
                        .frame(height: 55)
                        .background(Color(#colorLiteral(red: 0.9058823529, green: 0.2980392157, blue: 0.2352941176, alpha: 0.6)))
                        .cornerRadius(30)
                }
                
                
                
            }
            .padding(.horizontal, 30)
            .padding(.top, 50)
            .padding(.bottom, 30)
            .navigationBarBackButtonHidden(true)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItemGroup(placement: .principal) {
                    Text("Профиль")
                        .font(.custom(customFont, size: 22).weight(.medium))
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
