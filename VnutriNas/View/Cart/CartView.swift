//
//  CartView.swift
//  VnutriNas
//
//  Created by Даня on 26.03.2022.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var itemVM: ItemViewModel
    
    var body: some View {
        NavigationView {
        VStack(spacing: 0){
            ScrollView {
                VStack(spacing: 12){
                    ForEach(itemVM.cartItem) { item in
                        CartItemView(model: item)
                    }
                }
                .padding(.vertical, 32)
            }
            VStack(spacing: 20){
                HStack(spacing: 0){
                    Text("Итого:")
                        .foregroundColor(Color.black.opacity(0.6))
                        .font(.custom(customFont, size: 20).weight(.bold))
                    Spacer()
                    Text(itemVM.totalPrice + "руб.")
                        .foregroundColor(Color.black)
                        .font(.custom(customFont, size: 20).weight(.bold))
                        .padding(.trailing)
                }
                Button {
                    withAnimation {
                        
                    }
                } label: {
                    Text("Заказать")
                        .frame(maxWidth: .infinity, alignment: .center)
                        .foregroundColor(Color.white)
                        .frame(height: 55)
                        .background(Color(#colorLiteral(red: 0.9058823529, green: 0.2980392157, blue: 0.2352941176, alpha: 0.6)))
                        .cornerRadius(30)
                }
                
            }
            .padding(.horizontal, 30)
            .padding(.bottom, 30)
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItemGroup(placement: .principal) {
                Text("Корзина")
                    .font(.custom(customFont, size: 22).weight(.medium))
            }
        }
        }
        .onAppear {
            itemVM.getTotalPrice()
        }
    }
}

struct CartItemView: View {
    @EnvironmentObject var itemVM: ItemViewModel
    @State var count: Int = 0
    let model: CartItemModel
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
                    Spacer()
                    HStack(spacing: 15){
                        Button {
                            model.count += 1
                            count = model.count
                            itemVM.getTotalPrice()
                        } label: {
                            Image("+")
                        }
                        Text("\(count)")
                        Button {
                            if model.count > 1 {
                                model.count -= 1
                                count = model.count
                                itemVM.getTotalPrice()
                            }
                        } label: {
                            Image("-")
                        }
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                VStack(spacing: 0){
                    Button {
                        withAnimation {
                            itemVM.deleteInCart(item: model)
                        }
                        itemVM.getTotalPrice()
                    } label: {
                        Image("Shape")
                    }
                    Spacer()
                }
            }
            .frame(height: 110)
            Rectangle()
                .frame(height: 1)
                .foregroundColor(Color.black.opacity(0.08))
        }
        .padding(.horizontal, 20)
        .onAppear {
            count = model.count
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(ItemViewModel())
    }
}
