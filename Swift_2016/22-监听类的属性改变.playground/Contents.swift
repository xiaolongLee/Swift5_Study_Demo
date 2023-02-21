import UIKit

class Person : NSObject {
    // 属性监听器
    var name : String? {
        // 属性即将改变时进行监听
        willSet {
            print(name as Any)
            print(newValue as Any)
        }
        
        // 属性已经改变时进行监听
        didSet {
            print(name as Any)
            print(oldValue as Any)
        }
    }
        
}

let p = Person()
p.name = "why"
p.name = "yz"

