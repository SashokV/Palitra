//
//  ArtPieceButton.swift
//  CanvasCache
//
//  Created by Verozub, Sasha (JD) on 15/09/2025.
//
// Add this BELOW your HomeView struct or in its own file

import SwiftUI

struct ArtPieceNavigationTile: View {
    let artPiece: ArtPiece
    
    var body: some View {
        NavigationLink(destination: ArtPieceView(art: artPiece)) {
            ZStack {
                
                if let image = artPiece.image {
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFill()
                        .frame(height: 100)
                        .clipped()
                } else {
                    Rectangle()
                        .fill(Color.gray.opacity(0.4))
                        .frame(height: 100)
                }
                Text(artPiece.title)
                    .foregroundColor(.white)
                    .bold()
                    .shadow(radius: 5)
                    .multilineTextAlignment(.center)
                    .padding()
            }
            .frame(height:100)
            .cornerRadius(12)
            .clipped()
        }
    }
}


