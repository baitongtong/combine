// Created by 白童童 on 2022/11/30.
// Copyright © 2022白童童. All rights reserved.

import Foundation
///
struct PurchaseReq: Codable {
    var productIds: [String]
    var cost: Int
}

struct PurchaseRes: Codable {
    var resultCd: String
    var orderId: String
}
