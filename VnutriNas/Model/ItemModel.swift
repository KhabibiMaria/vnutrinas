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


var items: [ItemModel] = [ItemModel(name: "Янтарный блеск", price: 2000, descriptionText: "", image: "")]
