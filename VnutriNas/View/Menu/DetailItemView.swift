//
//  DetailItemView.swift
//  VnutriNas
//
//  Created by Даня on 21.12.2021.
//

import SwiftUI

struct DetailItemView: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var itemVM: ItemViewModel
    @State var count: Int = 1
    var model: ItemModel
    
    var body: some View {
        VStack{
        ScrollView {
            VStack(spacing: 0){
                
                Image(model.image)
                    .resizable()
                    .frame(height: 320)
                    .cornerRadius(20)
                    .padding(.vertical, 23)
                
                HStack(alignment: .center, spacing: 0){
                    VStack(alignment: .leading, spacing: 6){
                        Text(model.name.uppercased())
                            .font(.custom(customFont, size: 24).weight(.medium))
                            .lineLimit(5)
                        Text("\(model.price) руб.")
                            .font(.custom(customFont, size: 24).weight(.bold))
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                    HStack(spacing: 15){
                        Button {
                            count += 1
                        } label: {
                            Image("+")
                        }
                        Text("\(count)")
                        Button {
                            if count > 1 {
                                count -= 1
                            }
                        } label: {
                            Image("-")
                        }
                    }
                }
                .padding(.bottom, 30)
                Text(model.descriptionText)
                    .foregroundColor(Color.black)
                    .font(.custom(customFont, size: 18).weight(.light))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .multilineTextAlignment(.leading)
                
                    
                    
                
            }
            .padding(.horizontal, 30)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
           
        }
            HStack(spacing: 30){
                Button {
                    if !itemVM.cartItem.contains(where: { items in
                        items.id == model.id
                    }){
                        itemVM.addToCart(item: model, count: count)
                    }
                } label: {
                    Text("Добавить в корзину")
                        .foregroundColor(Color.white)
                        .frame(maxWidth: .infinity)
                        .font(.custom(customFont, size: 18).weight(.bold))
                        .frame(height: 55)
                        .background(Color("green"))
                        .cornerRadius(30)
                }
                Button {
                    if !itemVM.favoriteItem.contains(model) {
                        itemVM.addToFavorite(item: model)
                    }
                } label: {
                    Image("fav")
                        .renderingMode(.template)
                        .foregroundColor(Color.black)
                }
                
            }
            .padding(.bottom, 30)
            .padding(.horizontal, 30)
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItemGroup(placement: .navigationBarLeading) {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "chevron.left")
                        .foregroundColor(Color.black)
                        .font(.system(size: 16))
                        
                })
                    .padding(.leading, 14)
            }
        }
    }
}
