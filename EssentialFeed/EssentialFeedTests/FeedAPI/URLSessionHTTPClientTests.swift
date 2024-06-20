//
//  URLSessionHTTPClientTests.swift
//  EssentialFeedTests
//
//  Created by Mario Mastrandrea on 20/06/24.
//

import XCTest


class URLSessionHTTPClient {
    private let session: URLSession
    
    init(session: URLSession) {
        self.session = session
    }
    
    func get(from url: URL) {
        session.dataTask(with: url) { _, _, _ in }
    }
}

final class URLSessionHTTPClientTests: XCTestCase {

    @available(*, deprecated, message: "get rid of warnings")
    func test_getFromURL_createsDataTaskWithURL() {
        let url = URL(string: "http://any-url.com")!
        let session = URLSessionSpy()
        let sut = URLSessionHTTPClient(session: session)
        
        sut.get(from: url)
        
        XCTAssertEqual(session.receivedURLs, [url])
    }
    
    // MARK: - Helpers
    
    // subclass-based mocking
    private class URLSessionSpy: URLSession {
        var receivedURLs = [URL]()
        
        @available(*, deprecated, message: "get rid of warnings")
        override func dataTask(with url: URL, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
            receivedURLs.append(url)
            return FakeURLSessionDataTask()
        }
            
        
    }
    
    private class FakeURLSessionDataTask: URLSessionDataTask {}

}
