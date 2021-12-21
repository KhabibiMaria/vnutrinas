//
//  ItemModel.swift
//  VnutriNas
//
//  Created by Student on 20.12.2021.
//

import Foundation


struct ItemModel: Hashable, Codable{
    var id = UUID().uuidString
    var name: String
    var price: Int
    var descriptionText: String
    var image: String
}


var itemsMOCK: [ItemModel] = [ItemModel(name: "Браслет вечерний", price: 3200, descriptionText: "Всегда притягивает взгляд прохожих своим цветом и яркостью.", image: "1"), ItemModel(name: "Слеза луны", price: 1900, descriptionText: "Отлично подходит под платье.", image: "2"), ItemModel(name: "Бриллант Якутии", price: 5800, descriptionText: "Небольшое, но очень изысканное кольцо. Станет отличным дополнением к обручальному кольцу", image: "3"), ItemModel(name: "Лунный Шарм", price: 2800, descriptionText: "Очень красивое украшение.", image: "4"), ItemModel(name: "Лучи солнца", price: 1890, descriptionText: "Очень красивое украшение.", image: "7"), ItemModel(name: "Янтарное Ожерелье", price: 5690, descriptionText: "Очень красивое украшение.", image: "8")]
