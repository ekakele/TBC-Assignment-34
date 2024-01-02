//
//  MockData.swift
//  Assignment-34
//
//  Created by Eka Kelenjeridze on 03.01.24.
//

import Foundation

struct MockData {
    static let previewExample: [Item] = [
        Item(
            href: "testImage",
            data: [
                Datum(
                    center: "JSC",
                    dateCreated: "2022-11-19T00:00:00Z",
                    description: "art001m1013232148 (Nov. 19, 2022) On flight day 4, Orion caught this view of our Moon juxtaposed with Saturn toward the upper left of the frame by using one of the cameras mounted on its solar arrays.",
                    keywords: [
                        "Artemis I resource reel",
                        "Artemis",
                        "Artemis I",
                        "Orion",
                        "Moon",
                        "Saturn"
                    ],
                    mediaType: "video",
                    nasaID: "Moon and Saturn",
                    title: "Orion Sees the Moon and Saturn",
                    album: ["Artemis_I"]
                )
            ],
            links: [
                ItemLink(href: "https://images-assets.nasa.gov/video/Moon and Saturn/Moon and Saturn~thumb.jpg", rel: "preview", render: "image"),
                ItemLink(href: "https://images-assets.nasa.gov/video/Moon and Saturn/Moon and Saturn.srt", rel: "captions", render: "image")
            ]
        ),
        
        Item(
            href: "testImage",
            data: [
                Datum(
                    center: "JSC",
                    dateCreated: "2022-11-19T00:00:00Z",
                    description: "art001m1013232148 (Nov. 19, 2022) On flight day 4, Orion caught this view of our Moon juxtaposed with Saturn toward the upper left of the frame by using one of the cameras mounted on its solar arrays.",
                    keywords: [
                        "Artemis I resource reel",
                        "Artemis",
                        "Artemis I",
                        "Orion",
                        "Moon",
                        "Saturn"
                    ],
                    mediaType: "video",
                    nasaID: "Moon and Saturn",
                    title: "Orion Sees the Moon and Saturn",
                    album: ["Artemis_I"]
                )
            ],
            links: [
                ItemLink(href: "https://images-assets.nasa.gov/video/Moon and Saturn/Moon and Saturn~thumb.jpg", rel: "preview", render: "image"),
                ItemLink(href: "https://images-assets.nasa.gov/video/Moon and Saturn/Moon and Saturn.srt", rel: "captions", render: "image")
            ]
        ),
        
        Item(
            href: "testImage",
            data: [
                Datum(
                    center: "JSC",
                    dateCreated: "2022-11-19T00:00:00Z",
                    description: "art001m1013232148 (Nov. 19, 2022) On flight day 4, Orion caught this view of our Moon juxtaposed with Saturn toward the upper left of the frame by using one of the cameras mounted on its solar arrays.",
                    keywords: [
                        "Artemis I resource reel",
                        "Artemis",
                        "Artemis I",
                        "Orion",
                        "Moon",
                        "Saturn"
                    ],
                    mediaType: "video",
                    nasaID: "Moon and Saturn",
                    title: "Orion Sees the Moon and Saturn",
                    album: ["Artemis_I"]
                )
            ],
            links: [
                ItemLink(href: "https://images-assets.nasa.gov/video/Moon and Saturn/Moon and Saturn~thumb.jpg", rel: "preview", render: "image"),
                ItemLink(href: "https://images-assets.nasa.gov/video/Moon and Saturn/Moon and Saturn.srt", rel: "captions", render: "image")
            ]
        )
    ]
}
