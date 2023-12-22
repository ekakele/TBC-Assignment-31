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
        Painting(
            image: "LadyGodiva",
            title: "Lady Godiva",
            painter: "John Collier",
            date: "1897"
        ),
        Painting(
            image: "MaryMagdalene",
            title: "Mary Magdalene in the Cave",
            painter: "Jules Joseph Lefebvre",
            date: "1876"
        ),
        Painting(
            image: "RecliningNude",
            title: "Reclining Nude",
            painter: "Amedeo Modigliani",
            date: "1917"
        ),
        Painting(
            image: "ThebirthofVenus",
            title: "The birth of Venus",
            painter: "Sandro Botticelli",
            date: " 1485–1486"
        ),
        Painting(
            image: "WaterSerpents",
            title: "Water Serpents II",
            painter: "Gustav Klimt",
            date: "1904–1907"
        ),
        Painting(
            image: "BathshebaAtHerBath",
            title: "Bathsheba at Her Bath",
            painter: "Rembrandt",
            date: "1654"
        )
    ]
    
    static let paintingMockData: Painting =  Painting(
        image: "LadyGodiva",
        title: "LadyGodiva",
        painter: "John Collier",
        date: "1898"
    )
}
