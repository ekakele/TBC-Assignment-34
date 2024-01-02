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
//    let version: String
//    let href: String
    let items: [Item]
//    let metadata: Metadata
//    let links: [CollectionLink]
}

// MARK: - Item
struct Item: Decodable {
    let href: String //videos
    let data: [Datum] //info
    let links: [ItemLink] //image
}

// MARK: - Datum
struct Datum: Decodable {
    let album: [String]?
    let center: String
    let title: String
    let keywords: [String]
    let nasaID: String
    let dateCreated: Date
    let mediaType: String
    let description508, description, location, photographer: String?
    let secondaryCreator: String?

    enum CodingKeys: String, CodingKey {
        case album, center, title, keywords
        case nasaID = "nasa_id"
        case dateCreated = "date_created"
        case mediaType = "media_type"
        case description508 = "description_508"
        case description, location, photographer
        case secondaryCreator = "secondary_creator"
    }
}

// MARK: - ItemLink
struct ItemLink: Decodable {
    let href: String //image
//    let rel: String
//    let render: String
}

// MARK: - CollectionLink
//struct CollectionLink: Decodable {
//    let rel, prompt: String
//    let href: String
//}

// MARK: - Metadata
//struct Metadata: Decodable {
//    let totalHits: Int
//
//    enum CodingKeys: String, CodingKey {
//        case totalHits = "total_hits"
//    }
//}