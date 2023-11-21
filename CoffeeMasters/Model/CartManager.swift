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
    
    func total() -> Double {
        var total = 0.0
        for item in products {
            total += item.0.price * Double(item.1)
        }
        return total
    }
    
    
}


