//
//  DetailItemView.swift
//  VnutriNas
//
//  Created by Даня on 21.12.2021.
//

import SwiftUI

struct DetailItemView: View {
    @Environment(\.presentationMode) var presentationMode
    var model: ItemModel
    var body: some View {
        VStack(spacing: 0){
          
            VStack(spacing: 24){
                Image(model.image)
                    .resizable()
                    .frame(width: 216, height: 216)
                    .cornerRadius(20)
                    .shadow(color: Color.black.opacity(0.2), radius: 16, x: 0, y: 8)
                Text(model.name)
                    .font(.custom(customFont, size: 18).weight(.semibold))
                Text(model.descriptionText)
                    .font(.custom(customFont, size: 16).weight(.regular))
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(lineWidth: 0.5).foregroundColor(Color.black.opacity(0.35)))
                    .padding(.top, 6)
                    .padding(.horizontal, 30)
            }
            .padding(.top, 38)
              Spacer()
            VStack(spacing: 44){
                Text("\(model.price) руб.")
                    .foregroundColor(Color("green"))
                    .font(.custom(customFont, size: 32).weight(.bold))
                Button {
                    
                } label: {
                    Text("Добавить в корзину")
                        .foregroundColor(Color.white)
                        .frame(maxWidth: .infinity)
                        .font(.custom(customFont, size: 18).weight(.bold))
                        .frame(height: 66)
                        .background(Color("green"))
                        .cornerRadius(30)
                }
                .padding(.horizontal, 30)
                .padding(.bottom, 36)
            }
            
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .navigationBarBackButtonHidden(true)
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItemGroup(placement: .principal) {
                Text("Товар")
                    .font(.custom(customFont, size: 22).weight(.bold))
                    .frame(maxWidth: .infinity, alignment: .center)
                    .overlay(
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }, label: {
                            Image("arrow-left-circle")
                        })
                            
                            
                        ,alignment: .leading
                    )
            }
        }
    }
}
