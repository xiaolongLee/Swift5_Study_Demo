import UIKit

let say = "Hello, Swift"
print(say)
// debugPrint可以将推断出的类型添加到输出，例如给字符串内容添加双引号。
debugPrint(say)
// dump通常用于将一个对象的内容，如数组、字典等，转移到标准输出。
dump(say)

print(say + "!!!")
let str = " world"
print(say + str)
print("Hello,Swift\(str)")
