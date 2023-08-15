// Created by 白童童 on 2022/11/30.
// Copyright © 2022白童童. All rights reserved.

import Foundation

struct CancelOrderReq: Codable {
    var orderId: String
    var reason: String
}

struct CancelOrderRes: Codable {
    var resultCd: String
}
