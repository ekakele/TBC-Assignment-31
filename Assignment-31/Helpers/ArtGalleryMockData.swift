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
        Painting(image: "LadyGodiva", title: "Lady Godiva", painter: "John Collier", date: "1898"),
        Painting(image: "MaryMagdalene", title: "Mary Magdalene", painter: "Giuseppe Maria Crespi", date: "1690"),
        Painting(image: "RecliningNude", title: "Reclining Nude", painter: "Amedeo Modigliani", date: "1917"),
        Painting(image: "ThebirthofVenus", title: "The birth of Venus", painter: "Sandro Botticelli", date: " 1484–1486"),
        Painting(image: "WaterSerpents", title: "Water Serpents", painter: "Gustav Klimt", date: "1907–1908"),
        Painting(image: "BathshebaAtHerBath", title: "Bathsheba At Her Bath", painter: "Rembrandt", date: "1654")
    ]
    
    static let paintingMockData: Painting =  Painting(
        image: "LadyGodiva",
        title: "LadyGodiva",
        painter: "John Collier",
        date: "1898"
    )
    
    //    static let mockArtGallery = ArtGallery(paintings: mockPaintings)
}
