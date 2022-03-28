//
//  FavoritesView.swift
//  VnutriNas
//
//  Created by Даня on 26.03.2022.
//

import SwiftUI

struct FavoritesView: View {
    @EnvironmentObject var itemVM: ItemViewModel
    
    var body: some View {
        NavigationView {
        VStack(spacing: 0){
        ScrollView {
            VStack(spacing: 12){
                ForEach(itemVM.favoriteItem, id: \.self){item in
                    FavoriteCardView(model: item)
                }
            }
            .padding(.vertical, 32)
        }
            Button {
                withAnimation {
                    for item in itemVM.favoriteItem {
                        if !itemVM.cartItem.contains(where: { items in
                            items.id == item.id
                        }){
                            itemVM.addToCart(item: item, count: 1)
                        }
                    }
                }
            } label: {
                Text("Добавить все в корзину")
                    .frame(maxWidth: .infinity, alignment: .center)
                    .foregroundColor(Color.white)
                    .frame(height: 55)
                    .background(Color(#colorLiteral(red: 0.9058823529, green: 0.2980392157, blue: 0.2352941176, alpha: 0.6)))
                    .cornerRadius(30)
            }
            .padding(.horizontal, 30)
            .padding(.bottom, 30)
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItemGroup(placement: .principal) {
                Text("Избранное")
                    .font(.custom(customFont, size: 22).weight(.medium))
            }
        }
        }
    }
    
}

struct FavoriteCardView: View {
    @EnvironmentObject var itemVM: ItemViewModel
    let model: ItemModel
    var body: some View {
        VStack(spacing: 12){
        HStack(alignment: .top, spacing: 22){
            Image(model.image)
                .resizable()
                .frame(width: 110)
                .cornerRadius(10)
            VStack(alignment: .leading, spacing: 2){
                Text(model.name.uppercased())
                    .font(.custom(customFont, size: 14).weight(.light))
                    .foregroundColor(Color.black.opacity(0.95))
                Text("\(model.price) руб.")
                    .font(.custom(customFont, size: 16).weight(.bold))
                    .foregroundColor(Color.black)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            VStack(alignment: .trailing, spacing: 0){
                Button {
                    withAnimation {
                        itemVM.deleteInFavorite(item: model)
                    }
                } label: {
                    Image("Shape")
                }
                Spacer()
                Button {
                    if !itemVM.cartItem.contains(where: { items in
                        items.id == model.id
                    }){
                        itemVM.addToCart(item: model, count: 1)
                    }
                } label: {
                    Image("Frame 19")
                }

            }
        }
        .frame(height: 110)
            Rectangle()
                .frame(height: 1)
                .foregroundColor(Color.black.opacity(0.08))
        }
        .padding(.horizontal, 20)
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
            .environmentObject(ItemViewModel())
    }
}
