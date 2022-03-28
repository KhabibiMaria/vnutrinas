//
//  CartItemModel.swift
//  VnutriNas
//
//  Created by Даня on 26.03.2022.
//

import Foundation

class CartItemModel: Identifiable {
    var id: String = ""
    var name: String = ""
    var price: Int = 0
    var descriptionText: String = ""
    var image: String = ""
    var count: Int = 1
}
