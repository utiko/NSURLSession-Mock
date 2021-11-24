//
//  MockResponse.swift
//  Pods
//
//  Created by Kerr Miller on 27/01/2016.
//
//

import Foundation

/**
 Return one of this enum from a MockResponseHandler
 */
public enum MockResponse {
    case success(statusCode: Int, headers: [String:String], body: Data?)
    case failure(error: NSError)
}

/**
 Given the URL and the extracted sections, what should be the response data, the status code and the headers.
 
 Or, alternately, return a .Failure to deal with mocking errors before we hit the server (i.e. networking failure etc)
*/
public typealias MockResponseHandler = (_ request: URLRequest, _ extractions: [String]) -> MockResponse
