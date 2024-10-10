//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Mario Mastrandrea on 24/08/24.
//

import Foundation

struct RemoteFeedItem: Decodable {
    let id: UUID
    let description: String?
    let location: String?
    let image: URL
}
