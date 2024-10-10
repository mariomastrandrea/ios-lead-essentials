//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Mario Mastrandrea on 18/06/24.
//

import Foundation

public protocol FeedLoader {
    typealias Result = Swift.Result<[FeedImage], Error>

    func load(completion: @escaping (Result) -> Void)
}
