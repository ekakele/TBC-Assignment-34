//
//  MockData.swift
//  Assignment-34
//
//  Created by Eka Kelenjeridze on 03.01.24.
//

import Foundation

struct MockData {
    // MARK: - Properties
    static let previewExample: [Item] = [
        Item(
            href: "https://images-assets.nasa.gov/video/NHQ_2019_0311_Go%20Forward%20to%20the%20Moon/NHQ_2019_0311_Go%20Forward%20to%20the%20Moon~small.mp4",
            data: [
                Datum(
                    center: "JSC",
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
                ItemLink(href: "testImage", rel: "preview", render: "image"),
                ItemLink(href: "https://images-assets.nasa.gov/video/Moon and Saturn/Moon and Saturn.srt", rel: "captions", render: nil)
            ]
        ),
        Item(
            href: "https://images-assets.nasa.gov/video/NHQ_2019_0311_Go%20Forward%20to%20the%20Moon/NHQ_2019_0311_Go%20Forward%20to%20the%20Moon~small.mp4",
            data: [
                Datum(
                    center: "JSC",
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
                ItemLink(href: "testImage", rel: "preview", render: "image"),
                ItemLink(href: "https://images-assets.nasa.gov/video/Moon and Saturn/Moon and Saturn.srt", rel: "captions", render: nil)
            ]
        ),
        Item(
            href: "https://images-assets.nasa.gov/video/NHQ_2019_0311_Go%20Forward%20to%20the%20Moon/NHQ_2019_0311_Go%20Forward%20to%20the%20Moon~small.mp4",
            data: [
                Datum(
                    center: "JSC",
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
                ItemLink(href: "testImage", rel: "preview", render: "image"),
                ItemLink(href: "https://images-assets.nasa.gov/video/Moon and Saturn/Moon and Saturn.srt", rel: "captions", render: nil)
            ]
        )
    ]
}
