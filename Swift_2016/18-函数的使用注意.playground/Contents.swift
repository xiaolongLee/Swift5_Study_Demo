import UIKit

// 1.内部参数和外部参数
// 内部参数:在函数内部可以看到的参数名称,称之为内部参数
// 外部参数:在函数调用时,可以看到的参数,成之为外部参数
// 默认情况下从第二个参数开始,既是内部参数也是外部参数
// 如果希望将第一个参数也声明称外部参数,只需要在标识符前加上外部参数的名称即可
func sum(num1 : Int, num2 : Int) -> Int {
    return num1 + num2
}


// 函数的重载:函数名称相同,参数不同(1.参数的类型不同 2.参数的个数不同)
func sum(num1 : Int, num2 : Int, num3 : Int) -> Int {
     return num1 + num2 + num3
}

// 2.默认参数
func makeCoffee(coffeeName : String = "拿铁") -> String {
     
    return "制作了一杯\(coffeeName)咖啡"
}

makeCoffee(coffeeName: "雀巢")
makeCoffee(coffeeName: "猫屎")
makeCoffee()

// 3.可变参数
func sum(_ nums : Int...) -> Int {
    
    var result = 0
    
    for num in nums {
        result += num
    }
    return result
}

sum(num1: 12, num2: 30, num3: 40)
sum(44, 20, 30, 44, 55, 66)

// 4.引用参数
var m = 20
var n = 30

// 注意:默认情况形参都是常量

//func swapNum(var m : Int, var n : Int) {
//     let temp = m
//     m = n
//     n = temp
//}
//
//swapNum(var: 20, var: 30)

// 如果形参前面有inout,则需要传递指针到函数内
func swapNum( m : inout Int, n : inout Int)  {
     let temp = m
     m = n
     n = temp
}

swapNum(m: &m, n: &n)

print("m:\(m) n:\(n)")

// 5.函数的嵌套使用(不常用)

func test()  {
     
    func demo() {
         print("demo")
    }
    
    print("test")
    
    demo()
}

test()
