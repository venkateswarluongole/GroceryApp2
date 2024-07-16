//
//  CartItemViewModel.swift
//  GroceryApp2
//
//  Created by venkateswarlu.o on 13/07/24.
//

import SwiftUI

class CartItemViewModel: ObservableObject {
    @Published var cartItems: [CartItemModel] = []
    
    func addItem(item: ShopItemModel) {
        let cartItem = CartItemModel(imageName: item.imageName, title: item.title, price: item.price)
        cartItems.append(cartItem)
    }
    func itemCount() -> Int {
            cartItems.count
        }
}
