// Created by 白童童 on 2022/11/30.
// Copyright © 2022白童童. All rights reserved.

import Foundation


struct CommonReqHeader : Codable {
    var token : String
    
    init() {
        self.token = UUID().description
    }
    
    enum CodingKeys : String, CodingKey {
        case token = "token"
    }
}

struct CommonResHeader : Codable {
    var resultCd : String
    enum CodingKeys : String, CodingKey {
      case resultCd = "result_cd"
    }
}
