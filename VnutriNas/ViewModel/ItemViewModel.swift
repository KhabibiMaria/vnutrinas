//
//  ItemViewModel.swift
//  VnutriNas
//
//  Created by Даня on 26.03.2022.
//

import Foundation


class ItemViewModel: ObservableObject {
    @Published var items: [ItemModel] = itemsMOCK
    @Published var cartItem: [CartItemModel] = []
    @Published var favoriteItem: [ItemModel] = []
    @Published var totalPrice: String = ""
    func addToFavorite(item: ItemModel) {
        favoriteItem.append(item)
    }
    
    func deleteInFavorite(item: ItemModel) {
        favoriteItem.removeAll { model in
            model.id == item.id
        }
    }
    
    func addToCart(item: ItemModel, count: Int) {
        let model = CartItemModel()
        model.id = item.id
        model.price = item.price
        model.image = item.image
        model.name = item.name
        model.count = count
        model.descriptionText = item.descriptionText
        
        cartItem.append(model)
    }
    
    func deleteInCart(item: CartItemModel) {
        cartItem.removeAll { model in
            model.id == item.id
        }
    }
    
    func getTotalPrice() {
        var price = 0
        for item in cartItem {
            price += item.price * item.count
        }
        totalPrice = "\(price)"
    }
    
}
