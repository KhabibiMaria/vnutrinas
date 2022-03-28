//
//  OrderView.swift
//  VnutriNas
//
//  Created by Даня on 26.03.2022.
//

import SwiftUI

enum OrderTabs: String, CaseIterable {
    case delivered = "Доставлено"
    case inProcess = "В процессе"
    case cancelled = "Отменено"
}

struct OrderView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var selection: OrderTabs = .delivered
    @Namespace var namespace: Namespace.ID
    var body: some View {
            VStack(spacing: 0){
                HStack(spacing: 0){
                    ForEach(OrderTabs.allCases, id: \.self) { tab in
                        Button {
                            withAnimation {
                                selection = tab
                            }
                        } label: {
                            VStack(spacing: 9){
                                Text(tab.rawValue)
                                    .font(.system(size: 18, weight: selection == tab ? .bold : .regular))
                                    .foregroundColor(Color.black)
                                    .opacity(selection == tab ? 1 : 0.5)
                                    .animation(.none, value: selection)
                                if selection == tab {
                                RoundedRectangle(cornerRadius: 4)
                                    .foregroundColor(Color.black)
                                    .frame(width: 42, height: 4)
                                    .opacity(1)
                                    .matchedGeometryEffect(id: "tab", in: namespace)
                                } else {
                                    RoundedRectangle(cornerRadius: 4)
                                        .foregroundColor(Color.black)
                                        .frame(width: 42, height: 4)
                                        .opacity(0)
                                        
                                }
                            }
                            .frame(maxWidth: .infinity)
                            .animation(.easeIn, value: selection)
                        }
                    }
                }
                
                .padding(.horizontal, 25)
                .padding(.bottom, 2)
                .padding(.top, 30)
                TabView(selection: $selection) {
                    ScrollView {
                    VStack(spacing: 20){
                        ForEach(0..<1) { item in
                            OrderCardView()
                        }
                    }
                    .padding(.vertical, 18)
                    }
                    .tag(OrderTabs.delivered)
                    ScrollView {
                    VStack(spacing: 20){
                        ForEach(0..<2) { item in
//                            OrderCardView()
                        }
                    }
                    .padding(.vertical, 18)
                    }
                    .tag(OrderTabs.inProcess)
                    ScrollView {
                    VStack(spacing: 20){
                        ForEach(0..<4) { item in
//                            OrderCardView()
                        }
                    }
                    .padding(.vertical, 18)
                    }
                    .tag(OrderTabs.cancelled)
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            
        }
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItemGroup(placement: .principal) {
                Text("Заказы")
                    .font(.custom(customFont, size: 22).weight(.medium))
            }
            ToolbarItemGroup(placement: .navigationBarLeading) {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "chevron.left")
                        .foregroundColor(Color.black)
                        .font(.system(size: 16))
                        
                })
            }
        }
    }
}

struct OrderCardView: View {
    var body: some View {
        VStack(spacing: 0){
            HStack(spacing: 0){
                Text("Заказ №2367")
                    .foregroundColor(Color.black)
                    .font(.custom(customFont, size: 16).weight(.semibold))
                Spacer()
                Text("02/03/2022")
                    .foregroundColor(Color.black.opacity(0.5))
                    .font(.custom(customFont, size: 14).weight(.regular))
            }
            .padding(.horizontal, 18)
            .padding(.bottom, 2)
            Rectangle()
                .frame(height: 1)
                .foregroundColor(Color.black.opacity(0.08))
            Spacer()
            HStack{
                Button(action: {
                    
                }, label: {
                    Text("Детали")
                        .foregroundColor(Color.gray)
                        .frame(width: 95, height: 43)
                        .background(Color.black.opacity(0.12))
                        .cornerRadius(10)
                        
                })
                Spacer()
                Text("Доставлено")
                    .foregroundColor(Color.green)
                    .font(.custom(customFont, size: 16).weight(.semibold))
            }
            .padding(.horizontal, 18)
        }
        .padding(.vertical, 12)
        .frame(maxWidth: .infinity)
        .frame(height: 130)
        .background(Color.white)
        .cornerRadius(8)
        .shadow(color: Color.black.opacity(0.08), radius: 20, x: 0, y: 8)
        .padding(.horizontal, 20)
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
