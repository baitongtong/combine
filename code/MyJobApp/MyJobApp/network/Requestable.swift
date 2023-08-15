// Created by 白童童 on 2022/11/30.
// Copyright © 2022白童童. All rights reserved.

import Foundation
import Combine

public protocol Requestable {
    
    var requestDefalutTimeOut: Float { get }
    
    func request<T: Codable>(_ req: NetworkRequest) -> AnyPublisher<T, NetworkError>
    func shareRequest<T: Codable>(_ req: NetworkRequest) -> AnyPublisher<T, NetworkError>
}
