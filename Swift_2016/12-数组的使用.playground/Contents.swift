import UIKit

// 1.数组的定义
// 不可变数组(let)和可变数组(var)
// 1>不可变数组

let array = ["why", "lmj", "lnj", "yz"]

// 2>可变数组
//var arrayM = Array<String>()

var arrayM = [String]()

//2.对可变数组的操作(增删改查)
// 2.1.添加元素
arrayM.append("why")
arrayM.append("yz")
arrayM.append("lmj")
arrayM.append("lnj")


// 2.2删除元素
arrayM.remove(at: 0)
arrayM

// 2.3.修改元素
arrayM[1] = "why"
arrayM

// 2.4.获取某一个下标值的元素
arrayM[0]

// 3.遍历数组
// 常见
for i in 0..<arrayM.count {
    print(arrayM[i])
}

for name in arrayM {
    print(name)
}

// 不常见
for i in 0..<2 {
    print(arrayM[i])
}

for name in arrayM[0..<2] {
    print(name)
}

// 4.数组的合并
//for name in array {
//    arrayM.append(name)
//}
//arrayM

// swift中如果两个数组类型是完全一致的,可以相加进行合并
let resultM = arrayM + array
