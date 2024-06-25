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
        VStack(alignment: .leading) {
            Text("Menu")
                .font(.largeTitle)
                .bold()
            
            List(sushiItems) {sushiItem in
                MenuItemRow(item: sushiItem)
            }
            .onAppear(perform: {
              sushiItems = dataService.getData()
            })
            .listStyle(.plain)
            
        }
        .padding()
    }
}

#Preview {
    MenuView()
}
