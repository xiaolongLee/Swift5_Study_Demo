import UIKit

class Person : NSObject {
    var name : String?
    var age : Int
    var height : Double
}

let p = Person()

// 注意:赋值不是调用set方法,直接拿到属性给属性赋值
p.name = "why"
p.age = 18
p.height = 1.88
