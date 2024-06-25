//
//  MenuView.swift
//  Restaurant
//
//  Created by Tauan Tathiell Camargo on 25/06/24.
//

import SwiftUI

struct MenuView: View {
    @State var sushiItems: [MenuItem] = [MenuItem]()
    var dataService = DataService()
    
    var body: some View {
        List(sushiItems) {sushiItem in
            MenuItemRow(item: sushiItem)
        }
        .listStyle(.plain)
        .onAppear(perform: {
          sushiItems = dataService.getData()
        })
    }
}

#Preview {
    MenuView()
}
