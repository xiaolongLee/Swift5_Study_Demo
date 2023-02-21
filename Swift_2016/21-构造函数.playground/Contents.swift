import UIKit

class Person: NSObject {
    var name : String?
    var age : Int = 0
    
    override init() {
        // 在构造函数中,如果没有明确super.init(),那么系统会帮助调用super.init()
        // super.init()
        
        print("-------")
    }
    
    // 自定义构造函数
    init(name : String, age : Int) {
        self.name = name
        self.age = age
    }
//
//    init(dict : [String : AnyObject]) {
//         let tempName = dict["name"]
//        // tempName是一个AnyObject?,转成String?
//        // as? 最终转成的类型是一个可选类型
//        // as! 最终转成的类型是一个确定的类型
//        name = tempName as? String
//        /*
//        let tempAge = dict["age"]
//        let tempAge1 = tempAge as? Int
//        if tempAge1 != nil {
//            age = tempAge1!
//        }
//         */
//
//        if let tempAge = dict["age"] as? Int {
//
//            age = tempAge
//        }
//    }
    
    init(dict : [String : Any]) {
        super.init()
        
        setValuesForKeys(dict)
    }
    
    override func setValue(_ value: Any?, forKey key: String) {
         
    }
        
}

//@interface Person : NSObject
//
//- (instanceType)initWithName:(NSString *)name age: (int)age
//- (instanceType)initWithDict:(NSDictionary *)dict;
//
//@end

let p = Person()
let p1 = Person(name: "why", age: 18)
print(p1.age)
print(p1.name as Any)

let p2 = Person(dict: ["name" : "why", "age" : 18, "height" : 1.88])
print(p2.age)
print(p2.name as Any)
