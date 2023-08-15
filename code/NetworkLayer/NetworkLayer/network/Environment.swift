// Created by 白童童 on 2022/11/30.
// Copyright © 2022白童童. All rights reserved.

import Foundation

public enum Environment: String, CaseIterable {
    case development 
    case production
}

extension Environment {
    /// postman mock server.
    var serviceBaseUrl: String {
        switch self {
        case .development:
            return "https://7a5fffa1-b400-4b2a-bf47-2e36ce89bf99.mock.pstmn.io/api"
        case .production:
            return "https://7a5fffa1-b400-4b2a-bf47-2e36ce89bf99.mock.pstmn.io/api"
        }
    }
}
