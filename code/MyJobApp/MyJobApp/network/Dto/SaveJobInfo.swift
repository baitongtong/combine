// Created by 白童童 on 2022/11/30.
// Copyright © 2022白童童. All rights reserved.

import Foundation

struct SaveJobInfoReq: Codable {
    var header: CommonReqHeader
    var body: SaveJobInfoReqBody?
    init() {
         self.header = CommonReqHeader()
    }
    enum CodingKeys : String, CodingKey {
      case header = "header"
      case body = "body"
    }
}

struct SaveJobInfoReqBody : Codable {
    var jobId : String
    enum CodingKeys : String, CodingKey {
      case jobId = "job_id"
    }
}
 

struct SaveJobInfoRes : Codable {
   var header : CommonResHeader
   enum CodingKeys : String, CodingKey {
     case header = "header"
   }
}
 
