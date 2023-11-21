//
//  CartManager.swift
//  CoffeeMasters
//
//

import Foundation

class CartManager: ObservableObject {
    @Published var products: [(Product, Int)] = []
    
    
    func add(product: Product, quantity: Int) {
        self.products.append((product, quantity))
    }
    
    func remove(product: Product) {
        self.products.removeAll {
            itemInCart in return itemInCart.0.id==product.id
        }
    }
    
    
}


