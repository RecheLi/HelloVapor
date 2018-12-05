//
//  HelloController.swift
//  App
//
//  Created by linitial on 2018/8/16.
//

import Vapor

final class HelloController {
    func greet(_ req: Request) throws -> String {
        print(req)
        return "Hello!"
    }
}


