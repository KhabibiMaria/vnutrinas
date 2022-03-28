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


var itemsMOCK: [ItemModel] = [
    ItemModel(name: "TI", price: 240, descriptionText: "Винтажные заколки с тигровым принтом.", image: "1"), ItemModel(name: "SIYANIE", price: 360, descriptionText: "Изысканные заколки для выходного вечера.", image: "2"), ItemModel(name: "SIYANIE2", price: 420, descriptionText: "Милейшие заколки для прогулки летними вечерами.", image: "3"), ItemModel(name: "KOROVKI", price: 180, descriptionText: "Заколки цвета окраса коровки.", image: "7"), ItemModel(name: "SIYANIE3", price: 390, descriptionText: "Сияющие заколки в 3 цветах.", image: "8"),
    ItemModel(name: "TIGER", price: 220, descriptionText: "Заколки с тигровым принтом.", image: "9"), ItemModel(name: "OHMY", price: 160, descriptionText: "Трендовое кольцо из бусин, напоминающих жемчуг .", image: "10"), ItemModel(name: "RUBE", price: 100, descriptionText: "Кольцо ручной работы из бисера.", image: "11"), ItemModel(name: "LOOKAT", price: 240, descriptionText: "Кольцо ручной работы с натуральным перламутром.", image: "12"), ItemModel(name: "AFROVA", price: 250, descriptionText: "Кольцо ручной работы с натуральным жемчугом.", image: "13"), ItemModel(name: "SONO", price: 300, descriptionText: "Кольцо с регулируемым размером.", image: "14"),
    ItemModel(name: "GODY", price: 320, descriptionText: "Кольцо с регулируемым размером.", image: "15"), ItemModel(name: "СHAIN 2.0", price: 380, descriptionText: "Цепь с замком тогл.", image: "17"), ItemModel(name: "CHAIN", price: 420, descriptionText: "Многослойная цепь золотого цвета с монетой.", image: "18"), ItemModel(name: "BOY", price: 450, descriptionText: "Чокер ручной работы из бусин.", image: "20"), ItemModel(name: "BIG CHAIN", price: 420, descriptionText: "Цепь золотого цвета большого размера.", image: "19"),
    ItemModel(name: "MOREMO", price: 320, descriptionText: "Чокер ручной работы.", image: "21"), ItemModel(name: "PINKLOVE", price: 550, descriptionText: "Чокер ручной работы из бусин с вставкой из натурального жемчуга .", image: "22"), ItemModel(name: "YOGURT", price: 480, descriptionText: "Чокер ручной работы с хрусталём, напоминающий по оттенкам черничный йогурт.", image: "24"), ItemModel(name: "OKO", price: 460, descriptionText: "Чокер ручной работы с камнями «Назар».", image: "23"), ItemModel(name: "BLOOD MILK", price: 560, descriptionText: "Капелька крови в кружке молока.", image: "26"),
    ItemModel(name: "FIRE BREEZ", price: 500, descriptionText: "Всегда притягивает взгляд прохожих своим цветом и яркостью.", image: "27"), ItemModel(name: "ORANGE MOON", price: 600, descriptionText: "Отлично подходит под платье.", image: "28"), ItemModel(name: "WHITE GOLD", price: 360, descriptionText: "Cерьги ручной работы из эпоксидной смолы белого цвета с золотыми блестками.", image: "32"),
    ItemModel(name: "OHRA1", price: 350, descriptionText: "Серьги ручной работы из эпоксидной смолы белого цвета в слиянии с охрой и швензами из хирургической стали с позолотой 18 k.", image: "33"), ItemModel(name: "OHRA2", price: 320, descriptionText: "Серьги ручной работы из эпоксидной смолы белого цвета в слиянии с охрой и швензами из хирургической стали с позолотой 18 k.", image: "34"), ItemModel(name: "BLACK OCEAN", price: 580, descriptionText: "Черные сережки, способные поглотить любого при взгляде на них.", image: "36"), ItemModel(name: "KETU", price: 380, descriptionText: "Серьги с крестами .", image: "35")
]
