//
//  CartManager.swift
//  CoffeeMasters
//
//

import Foundation

class CartManager: ObservableObject {
    @Published var products: [(Product, Int)] = []
}


