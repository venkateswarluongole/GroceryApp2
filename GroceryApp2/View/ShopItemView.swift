//
//  ShopItemView.swift
//  GroceryApp2
//
//  Created by venkateswarlu.o on 13/07/24.
//

import SwiftUI

struct ShopItemView: View {
    let item: ShopItemModel
    @ObservedObject var cartViewModel: CartItemViewModel
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(item.color)
                .opacity(0.25)
                .frame(width: 170, height: 230)
            VStack {
                Image(item.imageName)
                    .resizable()
                    .frame(width: 80, height: 80)
                Text(item.title)
                Button(action: {
                    cartViewModel.addItem(item: item)
                }) {
                    Text("$\(String(format: "%.2f", item.price))")
                        .foregroundColor(.white)
                        .frame(width: 100, height: 40)
                        .background(item.color)
                        .cornerRadius(10)
                }
            }
        }
    }
}

