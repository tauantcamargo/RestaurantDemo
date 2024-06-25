//
//  MenuItemRow.swift
//  Menu
//
//  Created by Tauan Tathiell Camargo on 25/06/24.
//

import SwiftUI

struct MenuItemRow: View {
    var item: MenuItem
    
    var body: some View {
        HStack {
            Image(item.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 50)
                .cornerRadius(10)
            Text(item.name)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
    
            Spacer()
            
            Text(item.formatPrice())
        }
        .listRowSeparator(.hidden)
        .listRowBackground(
            Color(.brown)
                .opacity(0.1)
        )
    }
}

#Preview {
    MenuItemRow(
        item: MenuItem(name: "Onigiri", price: 2.9, imageName: "onigiri")
    )
}
