//
//  ArtGalleryModel.swift
//  Assignment-31
//
//  Created by Eka Kelenjeridze on 22.12.23.
//

import Foundation

struct ArtGallery: Hashable {
    let paintings: [Painting]
}

struct Painting: Hashable {
    let image: String
    let title: String
    let painter: String
    let date: String
}
