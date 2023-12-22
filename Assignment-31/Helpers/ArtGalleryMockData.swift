//
//  PaintingsMockData.swift
//  Assignment-31
//
//  Created by Eka Kelenjeridze on 22.12.23.
//

import Foundation

struct ArtGalleryMockData {
    // MARK: - Properties
    static let mockPaintings: [Painting] = [
        Painting(name: "Lady Godiva", painter: "John Collier", date: "1898"),
        Painting(name: "Mary Magdalene", painter: "Giuseppe Maria Crespi", date: "c. 1690"),
        Painting(name: "Reclining Nude", painter: "Amedeo Modigliani", date: "1917"),
        Painting(name: "The Birth of Venus", painter: "Sandro Botticelli", date: "c. 1484–1486"),
        Painting(name: "Water Serpents", painter: "Gustav Klimt", date: "1907–1908"),
        Painting(name: "Bathsheba At Her Bath", painter: "Rembrandt", date: "1654"),
        Painting(name: "Nevermore", painter: "Paul Gauguin", date: "1897"),
    ]
    
    static let artGallery = ArtGallery(paintings: mockPaintings)
}
