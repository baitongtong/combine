// Created by 白童童 on 2022/11/30.
// Copyright © 2022白童童. All rights reserved.

import Foundation

public struct NetworkRequest {
    let url: String
    let httpMethod: HTTPMethod
    let headers: [String: String]?
    let requestTimeOut: Float?
    let body: Data?
    
    public init(url: String, urlParams: String? = nil,
                headers: [String: String]? = nil, reqBody: Encodable? = nil,
                reqTimeout: Float? = nil, httpMethod: HTTPMethod) {
       
        if let urlParams = urlParams {
            self.url = url + urlParams
        } else {
            self.url = url
        }
        self.requestTimeOut = reqTimeout
        self.httpMethod = httpMethod
        self.headers = headers
        if case .POST = self.httpMethod {
            self.body = reqBody?.encode()
        } else {
            self.body = nil
        }
    }
    
    public init(url: String, urlParams: String? = nil,
                headers: [String: String]? = nil, reqBody: Data? = nil,
                reqTimeout: Float? = nil, httpMethod: HTTPMethod) {
        if let urlParams = urlParams {
            self.url = url + urlParams
        } else {
            self.url = url
        }
        self.headers = headers
        self.requestTimeOut = reqTimeout
        self.httpMethod = httpMethod
        if case .POST = self.httpMethod {
            self.body = reqBody
        } else {
            self.body = nil
        }
    }
    
    func buildURLRequest(with url: URL) -> URLRequest {
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = httpMethod.rawValue
        urlRequest.allHTTPHeaderFields = headers ?? [:]
        if let body = body {
            if case .POST = self.httpMethod {
                urlRequest.httpBody = body
            }
        }
        return urlRequest
    }
}

public enum HTTPMethod: String {
    case GET = "GET"
    case POST = "POST"
    case PUT = "PUT"
    case DELETE = "DELETE"
}

public enum NetworkError: Error, Equatable {
    case badURL(_ error: String)
    case apiError(code: Int, error: String)
    case invalidJSON(_ error: String)
    case unauthorized(code: Int, error: String)
    case badRequest(code: Int, error: String)
    case serverError(code: Int, error: String)
    case noResponse(_ error: String)
    case unableToParseData(_ error: String)
    case unknown(code: Int, error: String)
}

extension Encodable {
    func encode() -> Data? {
        do {
            return try JSONEncoder().encode(self)
        } catch {
            return nil
        }
    }
}
