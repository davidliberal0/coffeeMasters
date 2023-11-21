//
//  DetailsPage.swift
//  CoffeeMasters
//
//

import SwiftUI

struct DetailsPage: View {
    
    // state variable for holding quantity
    @State var quantity = 1
    
    // variable to store the product
    var product: Product
    
    @EnvironmentObject var cartManager: CartManager
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ScrollView {
            AsyncImage(url: product.imageURL)
                .cornerRadius(5)
                .frame(maxWidth: .infinity, idealHeight: 150, maxHeight: 150)
                .padding(.top, 32)
            Text(product.name)
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.leading)
                .padding(24)
            Text(product.description)
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.leading)
                .padding(24)
                .foregroundColor(Color("Primary"))
            HStack {
                Text("$ \(product.price, specifier: "%.2f" ) each")
                // implement stepper to change quatity
                Stepper(value: $quantity, in: 1...10) { }
            }
                .frame(maxWidth: .infinity)
                .padding(30)
                            
            Text("Subtotal $4.25")
                .bold()
                .padding(12)
            
            Button("Add \(Double(quantity)*product.price, specifier: "%.2f") to Cart") {
                cartManager.add(product: product, quantity: quantity)
                dismiss()
            }
                .padding()
                .frame(width: 250.0)
                .background(Color("AlternativeTwo"))
                .foregroundColor(Color.black)
                .cornerRadius(25)

        }
            .navigationTitle("Dummy")
    }
}

#Preview {
    DetailsPage(product: Product(id: 1, name: "Dummy", description: "This is a description", price: 1.25, image: ""))
        .environmentObject(CartManager())
}
