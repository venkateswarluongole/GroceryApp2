//
//  CartItemView.swift
//  GroceryApp2
//
//  Created by venkateswarlu.o on 13/07/24.
//

import SwiftUI
struct CartItemView: View {
    @ObservedObject var cartViewModel: CartItemViewModel
    @State var totalPrice = 0.00
    var body: some View {
        VStack {
            Text("My Cart")
                .font(.system(size: 44, weight: .semibold, design: .rounded))
                .frame(width: 320, alignment: .leading)
            
            List {
                ForEach(cartViewModel.cartItems) { item in
                    HStack {
                        Image(item.imageName)
                            .resizable()
                            .frame(width: 40, height: 40)
                        VStack(spacing: 5) {
                            Text(item.title)
                            Text("$\(String(format: "%.2f", item.price))")
                                .foregroundColor(.gray)
                        }
                    }
                }
                .onDelete { indexSet in
                    cartViewModel.cartItems.remove(atOffsets: indexSet)
                }
            }
            Spacer()
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(.green)
                    .opacity(0.8)
                    .frame(width: 350, height: 120)
                VStack {
                    Text("Total Price")
                        .foregroundColor(.white)
                        .font(.system(size: 20))
                        .frame(width: 350, alignment: .leading)
                        .padding(.leading, 60)
                    Text("$\(String(format: "%.2f", calculateTotalPrice()))")
                        .foregroundColor(.white)
                        .font(.system(size: 26, weight: .bold))
                        .frame(width: 350, alignment: .leading)
                        .padding(.leading, 60)
                }
                Button() {
                    
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .strokeBorder()
                            .frame(width: 120, height: 50)
                            .foregroundColor(.white)
                        Text("Pay Now >")
                            .foregroundColor(.white)
                            .bold()
                    }
                }.offset(x: 80)
            }
        }
    }
//    private func calculateTotalPrice() -> Double {
//        cartViewModel.cartItems.reduce(0) { total, item in
//                total + item.price 
//            }
//        }
    private func calculateTotalPrice() -> Double {
        var total = 0.0
        for item in cartViewModel.cartItems {
            total += item.price
        }
        return total
    }

    
    
}
