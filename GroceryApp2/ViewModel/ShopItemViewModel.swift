//
//  ShopItemViewModel.swift
//  GroceryApp2
//
//  Created by venkateswarlu.o on 13/07/24.
//

import SwiftUI

class ShopViewModel: ObservableObject {
    @Published var items: [ShopItemModel] = [
        ShopItemModel(imageName: "avocado", title: "Avocado", price: 4.00, color: .green),
        ShopItemModel(imageName: "banana", title: "Banana", price: 2.50, color: .yellow),
        ShopItemModel(imageName: "chicken", title: "Chicken", price: 12.80, color: .red),
        ShopItemModel(imageName: "water", title: "Water", price: 1.00, color: .blue)
    ]
}
