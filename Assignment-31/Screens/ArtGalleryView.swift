//
//  ArtGalleryView.swift
//  Assignment-31
//
//  Created by Eka Kelenjeridze on 22.12.23.
//

import SwiftUI

struct ArtGalleryView: View {
    // MARK: - Properties
    private var artGallery: [Painting] = ArtGalleryMockData.PaintingsMockData
    
    @State var angle: Angle = Angle(degrees: 0)
    @State var offset: CGSize = CGSize.zero
    
    
    // MARK: - Body
    var body: some View {
        NavigationStack {
            ZStack {
                Color.darkBackground
                    .ignoresSafeArea()
                ScrollView {
                    rotationGesturePaintingView
                    dragGesturePaintingView
                }
                
            }
            .navigationTitle("Female Nudity in Art")
        }
    }
    
    private var rotationGesturePaintingView: some View {
        CustomCardView(
            image: artGallery[0].image,
            title: artGallery[0].title,
            painter: artGallery[0].painter,
            date: artGallery[0].date
        )
        .rotationEffect(angle)
        .gesture(
            RotationGesture()
                .onChanged { value in
                    angle = value
                }
                .onEnded { value in
                    withAnimation(.spring()) {
                        angle = Angle(degrees: 0)
                    }
                }
        )
    }
    
    private var dragGesturePaintingView: some View {
        CustomCardView(
            image: artGallery[1].image,
            title: artGallery[1].title,
            painter: artGallery[1].painter,
            date: artGallery[1].date
        )
        .offset(offset)
        .gesture(
            DragGesture()
                .onChanged { value in
                    withAnimation(.spring()) {
                        offset = value.translation
                    }
                }
                .onEnded { value in
                    withAnimation(.spring()) {
                        offset = .zero
                    }
                }
        )
    }
}

#Preview {
    ArtGalleryView()
}
