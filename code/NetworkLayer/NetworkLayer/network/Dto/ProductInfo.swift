// Created by 白童童 on 2022/11/30.
// Copyright © 2022白童童. All rights reserved.

import Foundation
///
struct ProductInfoReq: Codable {
    var productId: String
    var queryCond: String
}

struct ProductInfoRes: Codable {
    var productInfo: [ProductInfo]
}

struct ProductInfo: Codable {
    var productId: String
    var price: Int
}
