//
//  GroceryView.swift
//  GroceryApp2
//
//  Created by venkateswarlu.o on 13/07/24.
//

import SwiftUI

struct GroceryView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 50) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                Text("We deliver\n grocery at your\n doorstep")
                    .font(.system(size: 42, weight: .bold, design: .rounded))
                    .multilineTextAlignment(.center)
                Text("Grocerr gives you fresh vegetables and fruits,\nOrder fresh at grocerr")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.gray)
                NavigationLink {
                    ShopView()
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 50)
                            .frame(width: 200, height: 70)
                            .foregroundColor(.purple)
                        Text("Get Started")
                            .foregroundColor(.white)
                            .bold()
                    }
                }
            }
            .padding()
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GroceryView()
    }
}
