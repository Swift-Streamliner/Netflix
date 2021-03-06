//
//  MovieInfoSubheadline.swift
//  Netflix
//
//  Created by Tiger Mei on 23.04.2022.
//

import SwiftUI

struct MovieInfoSubheadline: View {
    var movie: Movie
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: "hand.thumbsup.fill")
                .foregroundColor(.white)
            Text(String(movie.year))
            RatingView(rating: movie.rating)
            Text(movie.numberOfSeasonsDisplay)
        }
    }
}

struct MovieInfoSubheadline_Preview: PreviewProvider {
    static var previews: some View {
        MovieInfoSubheadline(movie: exampleMovie1)
    }
}
