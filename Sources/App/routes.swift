import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // Basic "Hello, world!" example
    router.get("hello") { req in
        return "Hello, world!"
    }
    let helloController = HelloController()
    router.get("greet", use: helloController.greet)
    // Example of configuring a controller
    let todoController = TodoController()
    router.get("todos", use: todoController.index)
    router.post("todos", use: todoController.create)
    router.delete("todos", Todo.parameter, use: todoController.delete)
    
    router.get("users",Int.parameter) { (req) ->  String in
        let userId = try req.parameters.next(Int.self)
        return "requested id is \(userId)"
    }
    
    router.get("student/info") { (req) -> Student in
        let view = try req.make(ViewRenderer.self)
        print("view is \(view)")
        return Student(name: "vapor student", email: "vapor@vapor.cn")
    }
    
    router.post("fingergather/error/errorInfo.html") { (req) -> Future<HTTPStatus> in
        return try req.content.decode(ErrorInfo.self).map(to: HTTPStatus.self, { (errorInfo) in
            print("errorInfo \(errorInfo.userName)")
            print("errorInfo \(errorInfo.errorCode)")
            print("errorInfo \(errorInfo.errorInfo)")
            return .ok
        })
    }

}
