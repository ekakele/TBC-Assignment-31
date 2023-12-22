//
//  PaintingsMockData.swift
//  Assignment-31
//
//  Created by Eka Kelenjeridze on 22.12.23.
//

import Foundation

struct ArtGalleryMockData {
    // MARK: - Properties
    static let PaintingsMockData: [Painting] = [
        Painting(image: "LadyGodiva", title: "LadyGodiva", painter: "John Collier", date: "1898"),
        Painting(image: "MaryMagdalene", title: "MaryMagdalene", painter: "Giuseppe Maria Crespi", date: "c. 1690"),
        Painting(image: "RecliningNude", title: "RecliningNude", painter: "Amedeo Modigliani", date: "1917"),
        Painting(image: "ThebirthofVenus", title: "ThebirthofVenus", painter: "Sandro Botticelli", date: "c. 1484–1486"),
        Painting(image: "WaterSerpents", title: "WaterSerpents", painter: "Gustav Klimt", date: "1907–1908"),
        Painting(image: "BathshebaAtHerBath", title: "BathshebaAtHerBath", painter: "Rembrandt", date: "1654"),
        Painting(image: "Nevermore", title: "Nevermore", painter: "Paul Gauguin", date: "1897"),
    ]
    
    static let paintingMockData: Painting =  Painting(
        image: "LadyGodiva",
        title: "LadyGodiva",
        painter: "John Collier",
        date: "1898"
    )
    
    //    static let mockArtGallery = ArtGallery(paintings: mockPaintings)
}
