//
//  Book.swift
//  BookShelfSwiftUI
//
//  Created by Tatiana Bondarenko on 7/7/22.
//

import Foundation

struct Book: Identifiable, Equatable {
    
    let id: String = UUID().uuidString
    let title: String
    let author: String
    let coverArt: String
    let releaseYear: String
    let description: String
    
}
