//
//  ShopItemModel.swift
//  GroceryApp2
//
//  Created by venkateswarlu.o on 13/07/24.
//

import SwiftUI
struct ShopItemModel: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let price: Double
    let color: Color
}
