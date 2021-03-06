//
//  MovieDetail.swift
//  Netflix
//
//  Created by Tiger Mei on 23.04.2022.
//

import SwiftUI

struct MovieDetail: View {
    var movie: Movie
    let screen = UIScreen.main.bounds
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                        
                    }) {
                        Image(systemName: "xmark.circle")
                            .font(.system(size: 28))
                    }
                }
                .padding(.horizontal, 22)
                ScrollView(.vertical, showsIndicators: true) {
                    VStack {
                        StandartHomeMovie(movie: movie)
                            .frame(width: screen.width / 2.5)
                        MovieInfoSubheadline(movie: movie)
                        .foregroundColor(.gray)
                        .padding(.vertical, 6)
                        if movie.promotionHeadline != nil {
                            Text(movie.promotionHeadline!)
                                .bold()
                                .font(.headline)
                        }
                        PlayButton(text: "Play", imageName: "play.fill", backgroundColor: .red) {
                            //
                        }
                        
                        // Current Episode Information
                        // 1. Default
                        HStack {
                            Text(movie.episodeInfoDisplay)
                                .bold()
                            Spacer()
                        }.padding(.vertical, 4)
                        HStack {
                            Text(movie.episodeDescriptionDisplay)
                                .font(.subheadline)
                            Spacer()
                        }
                        // 2. Personalized - where the user currently is
                    }
                    .padding(.horizontal, 10)
                }
                
                Spacer()
            }
            .foregroundColor(.white)
        }
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: exampleMovie2)
    }
}
