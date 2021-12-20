//
//  MainTabView.swift
//  VnutriNas
//
//  Created by Student on 20.12.2021.
//

import SwiftUI

struct MainTabView: View {
    @State var selection: Int = 1
    init(){
        UITabBar.appearance().isHidden = true
    }
    var body: some View {
        VStack(spacing: 0){
            TabView(selection: $selection){
                MainMenuView()
                    .tag(1)
                SettingsView()
                    .tag(4)
            }
            CustomTabView(selection: $selection)
        }
    }
}

struct CustomTabView: View{
    @Binding var selection: Int
    var body: some View{
        HStack(spacing: 0){
            Button {
                selection = 1
            } label: {
                Image("home")
                    .renderingMode(.template)
                    .foregroundColor(selection == 1 ? Color.black : Color("tabs"))
                    .frame(maxWidth: .infinity)
            }
            Button {
                selection = 2
            } label: {
                Image("bell")
                    .renderingMode(.template)
                    .foregroundColor(selection == 2 ? Color.black : Color("tabs"))
                    .frame(maxWidth: .infinity)
            }
            Button {
                selection = 3
            } label: {
                Image("shopping-cart")
                    .renderingMode(.template)
                    .foregroundColor(selection == 3 ? Color.black : Color("tabs"))
                    .frame(maxWidth: .infinity)
            }
            Button {
                selection = 4
            } label: {
                Image("settings")
                    .renderingMode(.template)
                    .foregroundColor(selection == 4 ? Color.black : Color("tabs"))
                    .frame(maxWidth: .infinity)
            }
        }
        .padding(.vertical, 15)
        .padding(.horizontal)
        .frame(maxWidth: .infinity)
        .background(Color.white.edgesIgnoringSafeArea(.bottom))
        .overlay(Rectangle()
                    .frame(height: 1).foregroundColor(Color("tf")), alignment: .top)
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
