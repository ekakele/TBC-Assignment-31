//
//  ArtGalleryViewModel.swift
//  Assignment-31
//
//  Created by Eka Kelenjeridze on 22.12.23.
//

import Foundation

final class ArtGalleryViewModel: ObservableObject {
    // MARK: - Properties
    @Published var artGallery: [Painting] = ArtGalleryMockData.PaintingsMockData
    
    // MARK: - Methods

}
