//
//  PaintingGridView.swift
//  Assignment-31
//
//  Created by Eka Kelenjeridze on 22.12.23.
//

import SwiftUI

struct PaintingGridView: View {
    // MARK: - Properties
    @ObservedObject var viewModel: ArtGalleryViewModel
    var paintings: [Painting]

    var columns = [
        GridItem(.flexible(), spacing: 5)    ]
    
    // MARK: - Body
    var body: some View {
        ZStack {
            Color.darkBackgorund
                .ignoresSafeArea()
            verticalScrollView
        }
    }
    
    private var verticalScrollView: some View {
        ScrollView(showsIndicators: false) {
            paintingsGridView
        }
    }
    
    private var paintingsGridView: some View {
        LazyVGrid(columns: columns, spacing: 12) {
            ForEach(viewModel.artGallery, id: \.self) { painting in
                CustomCardView(image: painting.image, title: painting.title, painter: painting.painter, date: painting.date)
            }
        }
    }
}

#Preview {
    PaintingGridView(viewModel: ArtGalleryViewModel(), paintings: ArtGalleryMockData.PaintingsMockData)
}
