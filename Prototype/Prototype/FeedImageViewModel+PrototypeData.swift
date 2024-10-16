//
//  FeedImageViewModel+PrototypeData.swift
//  Prototype
//
//  Created by Mario Mastrandrea on 11/10/24.
//

import Foundation

extension FeedImageViewModel {
    static var prototypeFeed: [Self] {
        return [
            .init(
                description: "The East Side Gallery is an open-air gallery in Berlin. It consists of a series of murals painted directly on a 1,316 m long remnant of the Berlin Wall, located near the centre of Berlin, on Mühlenstraße in Friedrichshain-Kreuzberg. The gallery has official status as a Denkmal, or heritage-protected landmark.",
                location: "East Side Gallery\nMemorial in Berlin, Germany",
                imageName: "image-0"
            ),
            .init(
                description: nil,
                location: "Cannon Street, London",
                imageName: "image-1"
            ),
            .init(
                description: "The Desert Island in Faro is beautiful!! ☀️",
                location: nil,
                imageName: "image-2"
            ),
            .init(
                description: nil,
                location: nil,
                imageName: "image-3"
            ),
            .init(
                description: "Garth Pier is a Grade II listed structure in Bangor, Gwynedd, North Wales. At 1,500 feet in length, it is the second-longest pier in Wales, and the ninth longest in the British Isles.",
                location: "Garth Pier\nNorth Wales",
                imageName: "image-4"
            ),
            .init(
                description: "Glorious day in Brighton!! 🎢",
                location: "Brighton Seafront",
                imageName: "image-5"
            )
        ]
    }
}
