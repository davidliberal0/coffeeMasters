//
//  ContentView.swift
//  CoffeeMasters
//
//

import SwiftUI

struct ContentView: View {
    
    @State var name: String = ""
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        TabView {
            MenuPage()
                .tabItem {
                    Image(systemName: "cup.and.saucer")
                    Text("Menu")
                }
            OffersPage()
                .tabItem {
                    Image(systemName: "tag")
                    Text("Offers")
                }
            OrdersPage()
                .tabItem {
                    Image(systemName: "cart")
                    Text("Order")
                }.badge(cartManager.products.count)
            InfoPage()
                .tabItem {
                    Image(systemName: "info")
                    Text("Info")
                }
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(CartManager())
}
