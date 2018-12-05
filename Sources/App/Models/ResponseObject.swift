//
//  ResponseObject.swift
//  App
//
//  Created by linitial on 2018/12/4.
//

import Vapor

enum ResultCode {
    case success
    case failure
}

struct ResponseObject: ResponseEncodable {
    var resultCode: ResultCode
    var resultInfo: String
}
