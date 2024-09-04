//
//  SharedTestHelpers.swift
//  EssentialFeedTests
//
//  Created by Mario Mastrandrea on 04/09/24.
//

import Foundation

func anyNSError() -> NSError {
    return NSError(domain: "any error", code: 0)
}

func anyURL() -> URL {
    return URL(string: "http://any-url.com")!
}
