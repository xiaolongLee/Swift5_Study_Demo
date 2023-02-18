import UIKit

// 1.字典的定义
// 1>不可变字典(let)

// 注意:在swift中无论是数组还是字典都是使用[],但是如果[]中存放的是元素,编译器会认为是一个数组.如果[]中存放的是键值对,编译器会认为是一个字典
let dict = ["name" : "why", "age" : 18, "height" : 1.88] as [String : Any]


// 2>可变字典(var)
// var dictM = Dictionary<String, AnyObject>()
var dictM = [String : AnyObject]()

// 2.对可变字典的操作
// 2.1.添加元素
//dict["weight"] = 60

dictM["name"] = "why" as AnyObject
dictM["age"] = 18 as AnyObject
dictM["height"] = 1.88 as AnyObject
dictM["weight"] = 75 as AnyObject

// 2.2.删除元素
dictM.removeValue(forKey: "name")

// 2.3.修改元素
// 注意:如果有对应的key,则修改对应的value,如果没有对应的key,则添加对应的键值对
dictM["age"] = 30 as AnyObject
dictM

// 2.4.获取元素
dictM["weight"]


// 3.遍历字典
// 3.1.遍历所有的key

for key in dictM.keys {
    print(key)
}

// 3.2.遍历所有的value
for value in dictM.values {
    print(value)
}

// 3.3.遍历所有的key/value
for (key, value) in dictM {
    print(key)
    print(value)
}


// 4.合并字典
// 注意:字典即使类型一直也不可以先加合并

let tempDict : [String : String] = ["phoneNum" : "+86 110", "sex" : "男"]

// let resultDict = tempDict + dictM

for (key, value) in tempDict {
    dictM[key] = value  as AnyObject
}

dictM
