//
//  CustomCardView.swift
//  Assignment-31
//
//  Created by Eka Kelenjeridze on 22.12.23.
//

import SwiftUI

struct CustomCardView: View {
    // MARK: - Properties
    //    @EnvironmentObject var viewModel:
    
    var image: String
    var title: String
    var painter: String
    var date: String
    //    var gesture: Double
    
    //    var painting: Painting
    // MARK: - Body
    var body: some View {
        ZStack {
            Color.darkBackgorund
                .ignoresSafeArea()
            
            paintingStackView
        }
    }
    
    // MARK: - Components
    private var paintingStackView: some View {
        VStack(alignment: .leading) {
            paintingImageView
            Spacer()
            textStackView
        }
        .frame(width: 300, height: 300)
        .padding(.vertical, 10)
        .padding(.horizontal, 4)
        .background(.gray.opacity(0.4))
        .cornerRadius(8)
    }
    
    private var paintingImageView: some View {
        Image(image)
            .resizable()
            .frame(width: 260, alignment: .leading)
            .scaledToFit()
            .padding()
            .shadow(color: .gray, radius: 5)
    }
    
    private var textStackView: some View {
        VStack(alignment: .leading, spacing: 4) {
            titleTextView
            painterTextView
            dateTextView
        }
        .padding(.vertical, 4)
        .padding(.horizontal, 15)
    }
    
    private var dateTextView: some View {
        Text(date)
            .font(.system(size: 16))
            .foregroundColor(.white)
    }
    
    private var painterTextView: some View {
        Text(painter)
            .font(.system(size: 18))
            .foregroundColor(.white)
    }
    
    private var titleTextView: some View {
        Text(title)
            .font(.system(size: 20))
            .bold()
            .foregroundColor(.white)
    }
}

#Preview {
    CustomCardView(image: ArtGalleryMockData.paintingMockData.image, title: ArtGalleryMockData.paintingMockData.title, painter: ArtGalleryMockData.paintingMockData.painter, date: ArtGalleryMockData.paintingMockData.date)
}
