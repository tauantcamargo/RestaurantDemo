//
//  GalleryView.swift
//  Restaurant
//
//  Created by Tauan Tathiell Camargo on 25/06/24.
//

import SwiftUI

struct GalleryView: View {
    var dataService = DataService()
    @State var photos: [String] = [String]()
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Gallery")
                .font(.largeTitle)
                .bold()
            
            GeometryReader {proxy in
                ScrollView(showsIndicators: false) {
                    LazyVGrid(columns: [GridItem(spacing: 10),
                                        GridItem(spacing: 10),
                                        GridItem(spacing: 10)], spacing: 10) {
                        ForEach(photos, id: \.self) { photo in
                            Image(photo)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(maxWidth: (proxy.size.width - 20) / 3)
                                .clipped()
                        }
                    }
                    .onAppear() {
                        photos = dataService.getPhotos()
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    GalleryView()
}
