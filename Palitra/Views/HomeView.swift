//
//  HomeView.swift
//  CanvasCache
//
//  Created by Verozub, Sasha (JD) on 15/09/2025.
//

import SwiftUI

struct HomeView: View {
    
    var showSettings: () -> Void
    var showArtPiece: () -> Void
    
    var body: some View {
        
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Good day, User,")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding(.top, 40)
                            .padding(.leading, 20)
                        
                        Spacer()
                        
                        Button(action: {
                            showSettings()
                        }) {
                            Image(systemName: "gearshape")
                                .font(.system(size: 36))
                                .padding(.trailing, 20)
                                .foregroundColor(.black)
                        }
                        
                    }
                    .padding(.top, -20)
                    
                    HStack(spacing: 16) {
                        
                        ArtPieceNavigationTile(artPiece: .sample)
                        ArtPieceNavigationTile(artPiece: .sample)
                        
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 16)
                    
                    Text("Pieces that might interest you")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .padding(.leading, 20)
                        .padding(.top, 20)
                    
                    HStack(spacing: 16) {
                        
                        ArtPieceNavigationTile(artPiece: .sample)
                        ArtPieceNavigationTile(artPiece: .sample)
                        
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 16)
                    
                    HStack(spacing: 16) {
                        
                        ArtPieceNavigationTile(artPiece: .sample)
                        ArtPieceNavigationTile(artPiece: .sample)
                        
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 16)
                    
                    Text("Recently viewed")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .padding(.leading, 20)
                        .padding(.top, 20)
                    
                    HStack(spacing: 16) {
                        
                        ArtPieceNavigationTile(artPiece: .sample)
                        ArtPieceNavigationTile(artPiece: .sample)
                        
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 16)
                    
                    HStack(spacing: 16) {
                        
                        ArtPieceNavigationTile(artPiece: .sample)
                        ArtPieceNavigationTile(artPiece: .sample)
                        
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 16)
                    HStack(spacing: 16) {
                        
                        ArtPieceNavigationTile(artPiece: .sample)
                        ArtPieceNavigationTile(artPiece: .sample)
                        
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 16)
                    
                    
                    Spacer()
                    
                }
                
            }
            
        }
    }
}

