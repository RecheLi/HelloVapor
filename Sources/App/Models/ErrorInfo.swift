//
//  ErrorInfo.swift
//  App
//
//  Created by linitial on 2018/12/4.
//

import Vapor

struct ErrorInfo:  Content {
    var userName: String
    var sessionId: String
    var client: String
    var model: String
    var romVersion: String
    var network: String
    var memorySize: String
    var userId: String
    var padCode: String
    var funcType: String
    var errorInfo: String
    var errorCode: String
}
