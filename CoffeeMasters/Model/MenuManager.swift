//
//  MenuManager.swift
//  CoffeeMasters
//
//

import Foundation
import Alamofire

class MenuManager: ObservableObject {
    @Published var menu: [Category] = []
    
    // download data when the app starts
    init() {
        refreshItemsFromNetwork()
    }
    
    func refreshItemsFromNetwork()  {
            AF.request("https://firtman.github.io/coffeemasters/api/menu.json")
                .responseDecodable(of: [Category].self) { response in
                    // check if there is a value or information in the response
                    if let menuFromNetwork = response.value {
                        print(response.value)
                        self.menu = menuFromNetwork
                    }
                }
    }
    
    
}
