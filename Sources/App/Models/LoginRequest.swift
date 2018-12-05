//
//  LoginRequest.swift
//  App
//
//  Created by linitial on 2018/8/16.
//

import Vapor

struct LoginRequest: Content {
    var email: String
    var password: String
}

