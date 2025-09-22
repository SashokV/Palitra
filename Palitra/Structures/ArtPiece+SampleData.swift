//
//  ArtPiece+SampleData.swift
//  CanvasCache
//
//  Created by Verozub, Sasha (JD) on 17/09/2025.
//

import UIKit

import Foundation

extension ArtPiece {
    static let sample: ArtPiece = {
        let image = UIImage(named: "starry_night")
        
        return ArtPiece(
            title: "Starry Night",
            author: "Vincent van Gogh",
            date: Date(timeIntervalSince1970: -1234567890),
            shortHistory: "A famous painting created in 1889.",
            image: image
        )
    }()
}

