//
//  Offer.swift
//  CoffeeMasters
//
//

import SwiftUI

struct Offer: View {
    
    var title: String = ""
    var description: String = ""
    
    var body: some View {
        ZStack {
            Image("BackgroundPattern")
                .frame(maxWidth: .infinity, maxHeight: 200)
                .clipped()
            VStack {
                Text(title)
                    .padding(25)
                    .font(.title)
                    .background(Color("CardBackground"))
                Text(description)
                    .padding()
                    .background(Color("CardBackground"))
            }
        }
    }
}

#Preview {
    Offer(title: "My Offer", description: "This is a desciption")
}
