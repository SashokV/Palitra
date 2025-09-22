//
//  ArtPieceView.swift
//  CanvasCache
//
//  Created by Verozub, Sasha (JD) on 15/09/2025.
//

import SwiftUI

struct ArtPieceView: View {
    
    let art: ArtPiece
    
    var body: some View {
            
        ScrollView {
            VStack(spacing: 16) {
                if let uiImage = art.image {
                    Image(uiImage: uiImage)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 600)
                        .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
                        .shadow(radius: 8)
                        .accessibilityLabel(Text(art.title))
                } else {
                    ZStack {
                        RoundedRectangle(cornerRadius: 12, style: .continuous)
                            .fill(.ultraThinMaterial)
                            .frame(height: 220)
                        Image(systemName: "photo")
                            .font(.system(size: 48))
                            .foregroundStyle(.secondary)
                    }
                }
            }
            .frame(maxWidth: .infinity, alignment: .top)
            .padding(.top, 16)
            .padding(.horizontal)
        }
        .navigationTitle(art.title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview("Starry Night Preview") {
    NavigationStack {
        ArtPieceView(art: .sample)
    }
}
