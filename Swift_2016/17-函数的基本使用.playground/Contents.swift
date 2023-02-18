import UIKit

// 1.没有参数没有返回值
func about() -> Void {
    print("iPhoneX")
}

func about1() {
    print("iPhoneXs")
}

about()

let view : UIView

// 2.有参数没有返回值

func callPhone(phoneNum : String)   {
     print("打电话给\(phoneNum)")
}

callPhone(phoneNum: "+86 110")

// 3.没有参数有返回值
func readMessage() -> String {
    return "吃饭了吗"
}

print(readMessage())

// 4.有参数有返回值

func sum(num1 : Int, num2 : Int) -> Int {
    return num1 + num2
}

sum(num1 : 20, num2 : 30)
