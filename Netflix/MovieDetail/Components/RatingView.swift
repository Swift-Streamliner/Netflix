//
//  RatingView.swift
//  Netflix
//
//  Created by Tiger Mei on 05.05.2022.
//

import SwiftUI

struct RatingView: View {
    var rating: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.gray)
            Text(rating)
                .foregroundColor(.white)
                .font(.system(size: 12))
                .bold()
        }
        .frame(width: 50, height: 20)
    }
}
