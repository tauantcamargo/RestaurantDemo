//
//  PhotoView.swift
//  Restaurant
//
//  Created by Tauan Tathiell Camargo on 25/06/24.
//

import SwiftUI

struct PhotoView: View {
    @Binding var image: String
    @Binding var sheetVisible: Bool
    
    var body: some View {
        ZStack(alignment: .trailing) {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            VStack {
                HStack {
                    Spacer()
                    Button {
                        sheetVisible = false
                    } label: {
                        Image(systemName: "x.circle")
                            .scaleEffect(2)
                            .foregroundColor(.black)
                    }
                }
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    PhotoView(image: Binding.constant("gallery1"), sheetVisible: Binding.constant(true))
}
