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
                    HStack(spacing: 40){
                        Button {
                            
                        } label: {
                            Text("Сортировать")
                                .foregroundColor(Color.black)
                                .frame(width: 140, height: 48)
                                .background(Color.white)
                                .cornerRadius(30)
                                .shadow(color: Color.black.opacity(0.25), radius: 10, x: 0, y: 4)
                             
                        }
                        Button {
                            
                        } label: {
                            Text("Фильтры")
                                .foregroundColor(Color.black)
                                .frame(width: 140, height: 48)
                                .background(Color.white)
                                .cornerRadius(30)
                                .shadow(color: Color.black.opacity(0.25), radius: 10, x: 0, y: 4)
                             
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(.bottom, 22)
                    .padding(.top, 28)
                    VStack(alignment: .leading, spacing: 22){
                        Text("Популярные")
                            .font(.custom(customFont, size: 17).weight(.semibold))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 30)
                        
                            HStack(spacing: 20){
                                ForEach(itemsMOCK.shuffled().prefix(2), id: \.id){item in
                                    NavigationLink {
                                        DetailItemView(model: item)
                                    } label: {
                                        ItemCardView(model: item)
                                    }
                                }
                            }
                            .padding(.horizontal, 30)
                        
                        
                    }
                    .padding(.bottom, 22)
                    VStack(alignment: .leading, spacing: 22){
                        Text("Часто покупают")
                            .font(.custom(customFont, size: 17).weight(.semibold))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 30)
                       
                        
                            
                            LazyVGrid(columns: [GridItem(.flexible(), spacing: 20), GridItem(.flexible(), spacing: 20)], spacing: 20) {
                                ForEach(itemsMOCK, id: \.id){item in
                                    NavigationLink {
                                        DetailItemView(model: item)
                                    } label: {
                                        ItemCardView(model: item)
                                    }

                                }
                            }
                            .padding(.horizontal, 30)
                        
                    }
                    .padding(.bottom, 30)
                }
            
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(leading: Text("Украшения")
                                    .font(.custom(customFont, size: 20).weight(.semibold)).padding(.leading, 16), trailing:
                                    HStack(spacing: 27){
                Button {
                    
                } label: {
                    Image("search")
                }
                Button {
                    
                } label: {
                    Image("Ellipse 2")
                }
            }
                                    .padding(.trailing, 22)
            )
        }
       
    }
}

struct ItemCardView: View{
    var model: ItemModel
    var body: some View{
        VStack(spacing: 0){
            Image(model.image)
                .resizable()
                .frame(width: 110, height: 110)
                .cornerRadius(20)
                .padding(.top, 8)
            Text(model.name)
                .font(.custom(customFont, size: 14).weight(.semibold))
                .padding(.top, 7)
            Text("\(model.price) руб.")
                .font(.custom(customFont, size: 12).weight(.light))
                .padding(.bottom, 8)
        }
        .foregroundColor(Color.black)
        .frame(width: 167)
        .background(Color.white)
        .cornerRadius(20)
        .overlay(RoundedRectangle(cornerRadius: 20).stroke(lineWidth: 0.5).foregroundColor(Color.black.opacity(0.3)))
        .shadow(color: Color.black.opacity(0.2), radius: 14, x: 0, y: 5)
    }
}

struct MainMenuView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuView()
    }
}
