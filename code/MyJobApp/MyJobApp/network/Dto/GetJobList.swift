// Created by 白童童 on 2022/11/30.
// Copyright © 2022白童童. All rights reserved.

import Foundation

struct GetJobListReq : Codable {
    var header : CommonReqHeader
    
    init() {
        self.header = CommonReqHeader()
    }
    
    enum CodingKeys : String, CodingKey {
        case header = "header"
    }
}

struct GetJobListRes : Codable {
   var header : CommonResHeader
   var body : GetJobListResBody
   enum CodingKeys : String, CodingKey {
     case header = "header"
     case body = "body"
   }
}

struct GetJobListResBody : Codable {
    var jobInfos : [JobInfo]
    enum CodingKeys : String, CodingKey {
      case jobInfos = "job_infos"
    }
}

struct JobInfo : Codable {
   var jobId : String
   var jobName : String
   var salary : Int
   var companyName : String
   var newFlag : String
   
   enum CodingKeys : String, CodingKey {
     case jobId = "job_id"
     case jobName = "job_name"
     case salary = "salary"
     case companyName = "company_name"
     case newFlag = "new_flag"
   }
}
