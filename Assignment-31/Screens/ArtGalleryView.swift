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
    
    @State private var angle: Angle = Angle(degrees: 0)
    
    @State private var offset: CGSize = CGSize.zero
    
    @State private var currentValue: CGFloat = CGFloat.zero
    @State private var lastValue: CGFloat = CGFloat.zero
    
    @State private var isComplete: Bool = false
    
    @State private var isActivated: Bool = false
    
    // MARK: - Body
    var body: some View {
        NavigationStack {
            ZStack {
                Color.darkBackground
                    .ignoresSafeArea()
                ScrollView {
                    rotationGesturePaintingView
                    dragGesturePaintingView
                    magnificationGesturePaintingView
                    longPressGesturePaintingView
                    tapGesturePaintingView
                }
                
            }
            .navigationTitle("Female Nudity in Art")
        }
    }
    
    // MARK: - Components: CardViews + Gestures
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
    
    private var magnificationGesturePaintingView: some View {
        CustomCardView(
            image: artGallery[2].image,
            title: artGallery[2].title,
            painter: artGallery[2].painter,
            date: artGallery[2].date
        )
        .scaleEffect(1 + currentValue + lastValue)
        .gesture(
            MagnificationGesture()
                .onChanged { value in
                    currentValue = value - 1
                }
                .onEnded { value in
                    lastValue += currentValue
                    currentValue = 0
                }
        )
    }
    
    private var longPressGesturePaintingView: some View {
        CustomCardView(
            image: artGallery[3].image,
            title: artGallery[3].title,
            painter: artGallery[3].painter,
            date: artGallery[3].date
        )
        .opacity(isComplete ? 0.2 : 1.0)
        .animation(.easeInOut(duration: 1.0), value: isComplete)
        .onLongPressGesture(minimumDuration: 1.5) {
            withAnimation(.spring) {
                isComplete.toggle()
            }
        }
    }
    
    private var tapGesturePaintingView: some View {
        CustomCardView(
            image: artGallery[4].image,
            title: artGallery[4].title,
            painter: artGallery[4].painter,
            date: artGallery[4].date
        )
        .background(isActivated ? .yellow.opacity(0.5) : .clear)
        .cornerRadius(8)
        .padding(.horizontal, 42)
        .onTapGesture {
            withAnimation(.spring) {
                isActivated.toggle()
            }
        }
    }
    
}

#Preview {
    ArtGalleryView()
}
