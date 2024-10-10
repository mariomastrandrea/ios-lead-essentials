//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Mario Mastrandrea on 18/06/24.
//

import Foundation


public typealias LoadFeedResult = Result<[FeedImage], Error>

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
