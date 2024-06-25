//
//  MenuItem.swift
//  Menu
//
//  Created by Tauan Tathiell Camargo on 25/06/24.
//

import Foundation

struct MenuItem: Identifiable {
    var id: UUID = UUID()
    var name: String
    var price: Double
    var imageName: String
    
    func formatPrice() -> String {
        return String(format: "$%.2f", self.price)
    }
}
