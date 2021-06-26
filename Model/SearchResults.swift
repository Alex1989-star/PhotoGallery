//
//  SearchResults.swift
//  PhotoGallery
//
//  Created by Леся on 26.06.2021.
//

import Foundation

struct SearchResults: Decodable {
    let total: Int
    let results: [UnsplashPhoto]
}

struct UnsplashPhoto: Decodable {
    let width: Int
    let height: Int
    let urls: [URL.RawValue: String]
    
    
    enum URL: String {
        case raw
        case full
        case regular
        case small
        case thumb
    }
}
