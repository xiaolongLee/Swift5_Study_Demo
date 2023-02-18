import UIKit

 
// 类中所有的属性在对象初始化时,必须有初始化值
class Person: NSObject {
    var name : String?
    var view : UIView?
    
}

// 1.定义可选类型
// 1>普通定义可选类型的方式
// var name : Optional<String>
// 2>语法糖
var name : String?

// 2.给可选类型赋值
name = "why"

// 3.从可选类型中取值
// Optional("why")
print(name as Any)
// 从可选类型中取值:可选类型!-->强制解包
//print(name!)

// 4.注意:如果可选类型中没有值,那么强制解包程序会崩溃
// 强制解包是非常危险的操作:建议在解包前先判断可选类型中是否有值

if name != nil {
    print(name!)
    
    print(name!)
    
    print(name!)
}

// 5.可选绑定
// 1> 判断name是否有值,如果没有值,则不执行{}.
// 2> 如果有值,则对可选类型进行解包,并且将解包后的值赋值给前面的常量

//if let tempName = name {
//    print(tempName)
//}


if let name = name {
    print(name)
    print(name)
    print(name)
    print(name)
}
