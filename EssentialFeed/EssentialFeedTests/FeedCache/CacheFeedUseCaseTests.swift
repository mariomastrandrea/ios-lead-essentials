//
//  CacheFeedUseCaseTests.swift
//  EssentialFeedTests
//
//  Created by Mario Mastrandrea on 23/08/24.
//

import XCTest


class LocalFeedLoader {
    
    init(store: FeedStore) {

    }
}

class FeedStore {
    var deletedCachedFeedCallCount = 0
}

class CacheFeedUseCaseTests: XCTestCase {
    func test_init_doesNotDeleteCacheUponCreation() {
        let store = FeedStore()
        _ = LocalFeedLoader(store: store)
        
        XCTAssertEqual(store.deletedCachedFeedCallCount, 0)
    }
}
