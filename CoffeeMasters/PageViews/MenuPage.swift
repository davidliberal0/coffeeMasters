//
//  MenuPage.swift
//  CoffeeMasters
//
//

import SwiftUI

struct MenuPage: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(0 ..< 5) { item in
                    // navigationlink for linking details page on product click
                    NavigationLink {
                        DetailsPage()
                    } label: {
                        ProductItem(product: Product(id: 1, name: "DummyProduct", description: "", price: 1.25, image: ""))
                    }
                }
            }.navigationTitle("Products")
        }
    }
}

#Preview {
    MenuPage()
}
