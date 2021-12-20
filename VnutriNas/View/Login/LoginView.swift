//
//  LoginView.swift
//  VnutriNas
//
//  Created by Student on 20.12.2021.
//

import SwiftUI

struct LoginView: View {
    @State var selection = "signIn"
    var body: some View {
        if selection == "sighIn"{
            SignInView(selection: $selection)
        } else {
            
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView(selection: .constant("signIn"))
    }
}
