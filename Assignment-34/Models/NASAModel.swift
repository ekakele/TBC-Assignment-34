//
//  NASAModel.swift
//  Assignment-34
//
//  Created by Eka Kelenjeridze on 02.01.24.
//

import Foundation

// MARK: - Nasa
struct NASAModel: Decodable {
    let collection: Collection
}

// MARK: - Collection
struct Collection: Decodable {
    let items: [Item]
}

// MARK: - Item
struct Item: Decodable {
    var href: String //videos
    let data: [Datum] //info
    let links: [ItemLink] //image
}

// MARK: - Datum
struct Datum: Decodable {
    let center: String
    let description: String
    let keywords: [String]
    let mediaType: String
    let nasaID: String
    let title: String
    let album: [String]?
    
    enum CodingKeys: String, CodingKey {
        case center
        case description
        case keywords
        case mediaType = "media_type"
        case nasaID = "nasa_id"
        case title
        case album
    }
}

// MARK: - ItemLink
struct ItemLink: Decodable {
    let href: String
    let rel: String
    let render: String?
}
