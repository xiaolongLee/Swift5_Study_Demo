import UIKit

 let m = 32
 let n = 3.14

// Swift中没有隐式转化,不会将整形自动转成浮点型
// let result = m + n  错误写法
// 将整型转成浮点型
let result = Double(m) + n
// 将浮点型转成整型
let result1 = m + Int(n)



