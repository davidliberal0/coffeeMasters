//
//  ContentView.swift
//  CoffeeMasters
//
//

import SwiftUI

struct ContentView: View {
    
    @State var name: String = ""
    
    var body: some View {
        TabView {
            Text("Home Page")
                .tabItem {
                    Image(systemName: "cup.and.saucer")
                    Text("Home Page")
                }
            OffersPage()
                .tabItem {
                    Image(systemName: "tag")
                    Text("Offers")
                }
            Text("Oder Page")
                .tabItem {
                    Image(systemName: "cart")
                    Text("Order")
                }
            Text("Info Page")
                .tabItem {
                    Image(systemName: "info")
                    Text("Info")
                }
        }
    }
}

#Preview {
    ContentView()
}
