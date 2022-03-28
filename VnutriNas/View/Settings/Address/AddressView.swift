//
//  AddressView.swift
//  VnutriNas
//
//  Created by Даня on 26.03.2022.
//

import SwiftUI

struct AddressView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack(spacing: 0){
            Text("Адрес и способ\nоплаты")
                .font(.custom(customFont, size: 22).weight(.medium))
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity)
                .overlay(  Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "chevron.left")
                        .foregroundColor(Color.black)
                        .font(.system(size: 16))
                    
                }).padding(.leading, 30), alignment: .leading)
                .padding(.top)
                .padding(.bottom, 8)
            ScrollView {
                VStack(spacing: 0){
                    HStack(spacing: 0){
                        Text("Адрес доставки")
                            .foregroundColor(Color.black.opacity(0.9))
                            .font(.custom(customFont, size: 16).weight(.bold))
                        Spacer()
                        Button {
                            
                        } label: {
                            Image("edit-2")
                        }
                        
                    }
                    .padding(.top, 24)
                    .padding(.bottom, 12)
                    VStack(alignment: .leading, spacing: 12){
                        Text("Мария Хабиби")
                            .foregroundColor(Color.black.opacity(0.9))
                            .font(.custom(customFont, size: 18).weight(.bold))
                            .padding(.horizontal)
                        Rectangle()
                            .frame(height: 1)
                            .foregroundColor(Color.black.opacity(0.08))
                        Text("Россия, г. Москва, ул. Ленинградское шоссе, д.13А, кв. 228")
                            .lineLimit(5)
                            .foregroundColor(Color.black.opacity(0.5))
                            .font(.custom(customFont, size: 14).weight(.regular))
                            .multilineTextAlignment(.leading)
                            .padding(.horizontal)
                    }
                    .padding(.vertical, 14)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.white)
                    .cornerRadius(20)
                    .shadow(color: Color.black.opacity(0.05), radius: 20, x: 0, y: 5)
                    .padding(.bottom, 12)
                    VStack(alignment: .leading, spacing: 12){
                        Text("Способ доставки")
                            .foregroundColor(Color.black.opacity(0.9))
                            .font(.custom(customFont, size: 16).weight(.bold))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        VStack(spacing: 18){
                            Button {
                                
                            } label: {
                                HStack(spacing: 24){
                                 Image("on")
                                    Text("Почта России")
                                        .font(.custom(customFont, size: 14).weight(.regular))
                                        .foregroundColor(Color.black)
                                }
                                .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            
                            Rectangle()
                                .frame(height: 1)
                                .foregroundColor(Color.black.opacity(0.08))
                                .padding(.horizontal, 20)
                            Button {
                                
                            } label: {
                                HStack(spacing: 24){
                                 Image("off")
                                    Text("Курьерская доставка")
                                        .font(.custom(customFont, size: 14).weight(.regular))
                                        .foregroundColor(Color.black)
                                }
                                .frame(maxWidth: .infinity, alignment: .leading)
                            }

                        }
                        .padding(.horizontal, 20)
                        .padding(.vertical, 14)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.white)
                        .cornerRadius(20)
                        .shadow(color: Color.black.opacity(0.05), radius: 20, x: 0, y: 5)
                        .padding(.bottom, 12)
                    }
                    
                    VStack(alignment: .leading, spacing: 12){
                        Text("Способ оплаты")
                            .foregroundColor(Color.black.opacity(0.9))
                            .font(.custom(customFont, size: 16).weight(.bold))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        VStack(spacing: 18){
                            Button {
                                
                            } label: {
                                HStack(spacing: 24){
                                 Image("off")
                                    Text("Оплата наличными при получении")
                                        .font(.custom(customFont, size: 14).weight(.regular))
                                        .foregroundColor(Color.black)
                                }
                                .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            
                            Rectangle()
                                .frame(height: 1)
                                .foregroundColor(Color.black.opacity(0.08))
                                .padding(.horizontal, 20)
                            Button {
                                
                            } label: {
                                HStack(spacing: 24){
                                 Image("on")
                                    Text("Оплата картой при получении")
                                        .font(.custom(customFont, size: 14).weight(.regular))
                                        .foregroundColor(Color.black)
                                        .multilineTextAlignment(.leading)
                                }
                                .frame(maxWidth: .infinity, alignment: .leading)
                            }

                        }
                        .padding(.horizontal, 20)
                        .padding(.vertical, 14)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.white)
                        .cornerRadius(20)
                        .shadow(color: Color.black.opacity(0.05), radius: 20, x: 0, y: 5)
                        .padding(.bottom, 12)
                    }
                    .padding(.bottom, 12)
                    
                    Button {
                        withAnimation {
                            presentationMode.wrappedValue.dismiss()
                        }
                    } label: {
                        Text("Готово")
                            .foregroundColor(Color.white)
                            .frame(width: 170, height: 50)
                            .background(Color(#colorLiteral(red: 0.9058823529, green: 0.2980392157, blue: 0.2352941176, alpha: 0.6)))
                            .cornerRadius(30)
                    }
                }
                .padding(.horizontal, 30)
            }
            .navigationBarTitleDisplayMode(.inline)
         
        }
    }
}

struct AddressView_Previews: PreviewProvider {
    static var previews: some View {
        AddressView()
    }
}
