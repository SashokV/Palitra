//
//  ArtPiece.swift
//  CanvasCache
//
//  Created by Verozub, Sasha (JD) on 17/09/2025.
//

import UIKit

struct ArtPiece: Identifiable, Codable {
    let id: UUID
    var title: String
    var author: String
    var date: Date
    var shortHistory: String
    
    var medium: String?
    var dimensions: String?
    var category: String?
    var style: String?
    
    var origin: String?
    var currentLocation: String?
    var ownershipHistory: [String] = []
    
    var tags: [String] = []
    var notes: String?
    var isFavorite: Bool = false
    
    var dateAdded: Date
    var catalogNumber: String?
    
    var imageData: Data?
    
    init(
        title: String,
        author: String,
        date: Date,
        shortHistory: String,
        image: UIImage? = nil
    ) {
        self.id = UUID()
        self.title = title
        self.author = author
        self.date = date
        self.shortHistory = shortHistory
        self.dateAdded = Date()
        self.imageData = image?.jpegData(compressionQuality: 0.8)
    }
    
    var image: UIImage? {
        if let imageData = imageData {
            return UIImage(data: imageData)
        }
        return nil
    }
}
