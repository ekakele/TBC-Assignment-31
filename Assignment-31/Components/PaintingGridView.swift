////
////  PaintingGridView.swift
////  Assignment-31
////
////  Created by Eka Kelenjeridze on 22.12.23.
////
//
//import SwiftUI
//
//struct PaintingGridView: View {
//    // MARK: - Properties
//    @ObservedObject var viewModel: ArtGalleryViewModel
//    var paintings: [Painting]
//    var columns = [GridItem(.flexible(), spacing: 5)]
//    
//    //rotation
//    @State var angle: Angle = Angle(degrees: 0)
//    
//    // MARK: - Body
//    var body: some View {
//        ZStack {
//            Color.darkBackground
//                .ignoresSafeArea()
//            verticalScrollView
//        }
//    }
//    
//    // MARK: - Components
//    private var verticalScrollView: some View {
//        ScrollView(showsIndicators: false) {
//            paintingsGridView
//        }
//    }
//    
//    private var paintingsGridView: some View {
//        LazyVGrid(columns: columns, spacing: 12) {
//            ForEach(viewModel.artGallery, id: \.self) { painting in
//                CustomCardView(image: painting.image, title: painting.title, painter: painting.painter, date: painting.date, gesture: {})
//            }
//        }
//    }
//    
//    
//    // MARK: - Gestures
//    private var rotationGesture: some View {
//        .gesture(
//            RotationGesture()
//                .onChanged { value in
//                    angle = value
//                }
//                .onEnded { value in
//                    withAnimation(.spring()) {
//                        angle = Angle(degrees: 0)
//                    }
//                }
//        )
//    }
//    
//}
//
//#Preview {
//    PaintingGridView(viewModel: ArtGalleryViewModel(), paintings: ArtGalleryMockData.PaintingsMockData)
//}
