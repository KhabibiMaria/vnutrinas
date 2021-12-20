//
//  CustomTextField.swift
//  VnutriNas
//
//  Created by Student on 20.12.2021.
//

import SwiftUI

struct CustomTextField: View {
    @Binding var text: String
    var isSecure: Bool
    var title: String
    var body: some View {
        ZStack{
            if text.isEmpty{
                Text(title)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            if isSecure{
                SecureField("", text: $text)
            } else {
                TextField("", text: $text)
            }
        }
        .padding(.leading, 40)
        .padding(.trailing)
        .foregroundColor(Color.black.opacity(0.5))
        .font(.custom(customFont, size: 20).weight(.medium))
        .frame(maxWidth: .infinity)
        .frame(height: 66)
        .background(Color("tf"))
        .cornerRadius(30)
        .padding(.horizontal, 30)
    }
}
