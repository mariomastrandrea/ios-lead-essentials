//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by Mario Mastrandrea on 19/06/24.
//

import Foundation

public enum HTTPClientResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void)
}
