import UIKit

// 1.基本用法
let sex = 0

// 0:男 1:女 其他:其他

// 1> switch可以不跟() 2> case语句结束后可以不跟break,默认系统会加

switch sex {
case 0:
    print("男")
    // fallthrough
case 1:
    print("女")
default:
    print("其他")
}


// 2.基本用法的补充:
// 1>如果希望一个case中出现case穿透,那么可以在case语句结束后跟上fallthrough
// 2>case后面可以跟多个条件,多个条件以,分割
switch sex {
    case 0, 1:
         print("正常人")
    default:
        print("其他")
}

// 3.switch可以判断浮点型
let a : Double = 3.14

//if a == 3.14 {
//    print("π")
//} else {
//    print("非π")
//}

switch a {
    case 3.14:
        print("π")
    default:
    print("非π")
}

// 4.switch可以判断字符串
let m = 20
let n = 30
let opration = "+"

var result = 0

switch opration {
case "+":
    result = m + n
case "-":
    result = m - n
case "*":
    result = m * n
default:
    print("非法操作符")
}

// 5.switch可以判断区间
let score = 93

switch score {
case 0..<60:
    print("不及格")
case 60..<80:
    print("及格")
case 80..<90:
    print("良好")
case 90..<100:
    print("不错噢")
default:
    print("不合理的分数")
}
