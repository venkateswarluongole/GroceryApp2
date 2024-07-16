//
//  ShopView.swift
//  GroceryApp2
//
//  Created by venkateswarlu.o on 13/07/24.
//

import SwiftUI

struct ShopView: View {
    @StateObject private var shopViewModel = ShopViewModel()
    @StateObject private var cartViewModel = CartItemViewModel()
    var columns = [
        GridItem(.flexible()), 
        GridItem(.flexible())
    ]
    var body: some View {
        VStack {
            Text("Good morning,")
                .font(.title2)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(.gray)
                .padding(3)
            Text("Let's order fresh\nitems for you")
                .font(.system(size: 38, weight: .semibold, design: .rounded))
                .frame(maxWidth: .infinity, alignment: .leading)
            Spacer()
                .frame(height: 75)
            Text("Fresh Items")
                .font(.title2)
                .fontWeight(.semibold)
                .frame(width: 320, alignment: .leading)
                .foregroundColor(.gray)
            
        }
        .padding(20)
            
            ScrollView {
                LazyVGrid(columns: columns, spacing: 30) {
                    ForEach(shopViewModel.items) { item in
                        ShopItemView(item: item, cartViewModel: cartViewModel)
                    }
                }
                .padding(15)
            }
        .navigationBarItems(trailing:
            NavigationLink(destination: CartItemView(cartViewModel: cartViewModel)) {
            ZStack {
                    Image(systemName: "cart")
//                    .badge(cartViewModel.itemCount())
                    if cartViewModel.itemCount() > 0 {
                        Text("\(cartViewModel.itemCount())")
                                .font(.caption)
                                .foregroundColor(.white)
                                .padding(5)
                                .background(Color.blue)
                                .clipShape(Circle())
                                .offset(x: 10, y: -10) 
                    }
                }
            }
        )
    }
}

