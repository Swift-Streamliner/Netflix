//
//  StandartHomeMovie.swift
//  Netflix
//
//  Created by Tiger Mei on 14.04.2022.
//

import SwiftUI
import Kingfisher

struct StandartHomeMovie: View {
    var movie: Movie
    
    var body: some View {
        KFImage(movie.thumbnailURL)
            .resizable()
            .scaledToFill()
    }
}

struct StandartHomeMovie_Previews: PreviewProvider {
    static var previews: some View {
        StandartHomeMovie(movie: exampleMovie1)
    }
}
