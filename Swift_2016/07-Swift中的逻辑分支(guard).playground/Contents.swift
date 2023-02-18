import UIKit

// 1.guard必须用在函数
//func online(age : Int) {
//    if age >= 18 {
//        if 带了身份证 {
//            if 带了钱 {
//                print("可以上网")
//            } else {
//                print("不可以上网,回家拿钱")
//            }
//        } else {
//            print("不可以上网,回家拿身份证")
//        }
//    } else {
//        print("不可用上网,回家去吧")
//    }
//}

func online(age : Int) {
    // 如果条件成立,者会执行后面的代码块
    // 如果条件不成立,则会执行{}中的语句,并且{}中必须跟上
    
    guard age >= 18 else {
        print("未成年不能上网")
        return
    }
    
    guard 带了身份证 else {
        print("不可以上网,回家拿身份证")
        return
    }
    
    guard 带了钱 else {
        print("回家拿钱")
        return
    }
    
    print("留下来上网")
}
