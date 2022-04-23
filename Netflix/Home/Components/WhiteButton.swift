//
//  WhiteButton.swift
//  Netflix
//
//  Created by Tiger Mei on 19.04.2022.
//

import SwiftUI

struct WhiteButton : View {
    var text: String
    var imageName: String
    var action: () -> Void
    
    var body: some View {
        Button(action: action, label: {
            HStack {
                Spacer()
                Image(systemName: imageName)
                Text(text)
                    .bold()
                    .font(.system(size: 16))
                Spacer()
            }
            .padding(.vertical, 6)
            .foregroundColor(.black)
            .background(.white)
            .cornerRadius(3.0)
        })
    }
}

struct WhiteButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            WhiteButton(text: "Play", imageName: "play.fill") {
                
            }
        }
    }
}
