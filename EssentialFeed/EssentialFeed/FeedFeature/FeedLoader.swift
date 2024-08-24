//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Mario Mastrandrea on 18/06/24.
//

import Foundation


public enum LoadFeedResult {
    case success([FeedImage])
    case failure(Error)
}

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
