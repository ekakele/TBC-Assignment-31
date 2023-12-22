//
//  ArtGalleryView.swift
//  Assignment-31
//
//  Created by Eka Kelenjeridze on 22.12.23.
//

import SwiftUI

struct ArtGalleryView: View {
    // MARK: - Properties
    @ObservedObject private var viewModel = ArtGalleryViewModel()
    
    // MARK: - Body
    var body: some View {
        NavigationStack {
            ZStack {
                Color.darkBackgorund
                    .ignoresSafeArea()
                PaintingGridView(viewModel: viewModel, paintings: viewModel.artGallery)
            }
            .navigationTitle("Female Nudity in Art")
        }
    }
}

#Preview {
    ArtGalleryView()
}
