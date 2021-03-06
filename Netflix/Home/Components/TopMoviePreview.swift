//
//  TopMoviePreview.swift
//  Netflix
//
//  Created by Tiger Mei on 17.04.2022.
//

import SwiftUI
import Kingfisher

struct TopMoviePreview: View {
    var movie: Movie
    
    func isCategoryLast(_ category: String) -> Bool {
        let categoryCount = movie.categories.count
        
        if let index = movie.categories.firstIndex(of: category) {
            if index + 1 != categoryCount {
                return false
            }
        }
        return true
    }
    
    var body: some View {
        ZStack {
            KFImage(movie.thumbnailURL)
                .resizable()
                .scaledToFill()
                .clipped()
            VStack {
                Spacer()
                HStack {
                    ForEach(movie.categories, id: \.self) { category in
                        HStack {
                            Text(category)
                                .font(.footnote)
                            if !isCategoryLast(category) {
                                Image(systemName: "circle.fill")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 3))
                            }
                        }
                    }
                }
                HStack {
                    Spacer()
                    SmallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: true) {
                        
                    }
                    Spacer()
                    PlayButton(text: "Play", imageName: "play.fill") {
                        
                    }
                        .frame(width: 120)
                    
                    Spacer()
                    SmallVerticalButton(text: "Info", isOnImage: "info.circle", isOffImage: "info.circle", isOn: true) {
                        
                    }
                    Spacer()
                }
            }
            .background(
                topToBottomLinearGradient
                .padding(.top, 250)
            )
        }
        .foregroundColor(.white)
    }
}

struct TopMoviePreview_Preview: PreviewProvider {
    static var previews: some View {
        TopMoviePreview(movie: exampleMovie3)
    }
}
