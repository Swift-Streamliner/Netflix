//
//  TopRowButtons.swift
//  Netflix
//
//  Created by Tiger Mei on 23.04.2022.
//

import SwiftUI

struct TopRowButtons: View {
    var body: some View {
        HStack {
            Button(
                action: {}
            ) {
                Image("netflix_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50)
            }
            Spacer()
            Button(
                action: {}
            ) {
                Text("TV Shows")
            }
            Spacer()
            Button(
                action: {}
            ) {
                Text("Movies")
            }
            Spacer()
            Button(
                action: {}
            ) {
                Text("My List")
            }
        }
    }
}

struct TopRowButtons_Previews: PreviewProvider {
    static var previews: some View {
        TopRowButtons()
    }
}
