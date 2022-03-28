//
//  MainMenuView.swift
//  VnutriNas
//
//  Created by Student on 20.12.2021.
//

import SwiftUI

struct MainMenuView: View {
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 0){
                    HStack(spacing: 0){
                        Button {
                            
                        } label: {
                            VStack(spacing: 8){
                                Text("Категории")
                                    .font(.system(size: 18, weight: .bold))
                                    .foregroundColor(Color.black)
                                RoundedRectangle(cornerRadius: 4)
                                    .foregroundColor(Color.black)
                                    .frame(width: 42, height: 4)
                            }
                            .frame(maxWidth: .infinity)
                        }
                        
                        Button {
                            
                        } label: {
                            VStack(spacing: 8){
                                Text("Сортировка")
                                    .font(.system(size: 18, weight: .bold))
                                    .foregroundColor(Color.black)
                                RoundedRectangle(cornerRadius: 4)
                                    .foregroundColor(Color.black)
                                    .frame(width: 42, height: 4)
                                    .opacity(0)
                            }
                            .frame(maxWidth: .infinity)
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(.bottom, 18)
                    .padding(.top, 28)
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(Color.black.opacity(0.08))
                        .padding(.horizontal, 40)
                        .padding(.bottom, 18)
                    VStack(alignment: .center, spacing: 22){
                        Text("Популярные")
                            .font(.custom(customFont, size: 17).weight(.semibold))
                            .frame(maxWidth: .infinity, alignment: .center)
                        
                        LazyVGrid(columns: [GridItem(.flexible(), spacing: 20), GridItem(.flexible())], spacing: 20) {
                            ForEach(itemsMOCK, id: \.id){item in
                                NavigationLink {
                                    DetailItemView(model: item)
                                } label: {
                                    ItemCardView(model: item)
                                }
                                
                            }
                        }
                        .padding(.horizontal, 20)
                        
                        
                    }
                    .padding(.bottom, 22)
                }
                
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(
                leading:
                    Text("VNUTRINAS")
                    .font(.custom(customFont, size: 16).weight(.light))
                        .frame(maxWidth: .infinity, alignment: .center),
                trailing:
                    Button {
                        
                    } label: {
                        Image("Ellipse 2")
                    }
            )
        }
        
    }
}

struct ItemCardView: View{
    var model: ItemModel
    var body: some View{
        VStack(alignment: .leading, spacing: 0){
            Image(model.image)
                .resizable()
                .frame(height: 180)
                .cornerRadius(10)
                .overlay(
                Image("Frame 19")
                    .padding(10)
                ,alignment: .bottomTrailing
                )
            Spacer()
            VStack(alignment: .leading, spacing: 5){
                Text(model.name.uppercased())
                    .font(.custom(customFont, size: 14).weight(.regular))
                Text("\(model.price) руб.")
                    .font(.custom(customFont, size: 14).weight(.semibold))
            }
        }
        .foregroundColor(Color.black)
        .frame(height: 222)
    }
}

struct MainMenuView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuView()
    }
}
