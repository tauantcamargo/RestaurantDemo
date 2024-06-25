//
//  AboutView.swift
//  Restaurant
//
//  Created by Tauan Tathiell Camargo on 25/06/24.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .leading) {
                Text("About")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                
                Image("restaurant")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.bottom)
                
                Text("Excepteur tempor nostrud ut incididunt velit ad Lorem. Mollit occaecat Lorem ea. Reprehenderit velit sint ullamco minim. Elit officia reprehenderit eu nulla ex do minim qui. Consequat anim ex irure aliquip eu adipisicing aliquip consequat dolore non enim adipisicing. Aliquip est amet culpa magna aute labore enim cillum consequat labore duis occaecat laborum. Commodo amet fugiat nostrud in mollit nisi est est ex et do proident consequat nostrud.")
                
                Image("map")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Text("""
                    Avenida Carlos Elias
                    Quadra 17 Lote 19
                    Sao Carlos
                    """)
                
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    AboutView()
}
