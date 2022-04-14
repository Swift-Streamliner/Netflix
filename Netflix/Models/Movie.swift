//
//  Movie.swift
//  Netflix
//
//  Created by Tiger Mei on 14.04.2022.
//

import Foundation

struct Movie: Identifiable {
    var id: String = UUID().uuidString
    var name: String
    var thumbnailURL: URL
}
