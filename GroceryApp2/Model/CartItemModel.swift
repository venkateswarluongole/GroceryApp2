//
//  CartItemModel.swift
//  GroceryApp2
//
//  Created by venkateswarlu.o on 13/07/24.
//

import SwiftUI
struct CartItemModel: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let price: Double
}
