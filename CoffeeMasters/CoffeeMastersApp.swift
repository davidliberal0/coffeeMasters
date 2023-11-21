//
//  CoffeeMastersApp.swift
//  CoffeeMasters
//
//

import SwiftUI

@main
struct CoffeeMastersApp: App {
    
    // instantiate objects - global implementation
    var menuManager = MenuManager()
    var cartManager = CartManager()
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(menuManager)
                .environmentObject(cartManager)
        }
    }
}
