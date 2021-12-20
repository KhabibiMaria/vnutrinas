//
//  ContentView.swift
//  VnutriNas
//
//  Created by Student on 20.12.2021.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("isAuth") var isAuth: Bool = false
    var body: some View {
        if isAuth{
            MainTabView()
        } else {
            SignInView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
