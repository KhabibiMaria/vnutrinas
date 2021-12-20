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
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack(spacing: 20){
                                
                            }
                        }
                        
                    }
                    .padding(.bottom, 22)
                    VStack(alignment: .leading, spacing: 22){
                        Text("Часто покупают")
                            .font(.custom(customFont, size: 17).weight(.semibold))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 30)
                       
                        
                    }
                    .padding(.bottom)
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

struct MainMenuView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuView()
    }
}
