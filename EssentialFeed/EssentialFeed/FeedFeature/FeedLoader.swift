//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Mario Mastrandrea on 18/06/24.
//

import Foundation


enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
