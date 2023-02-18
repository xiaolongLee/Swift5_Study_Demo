import UIKit

// 1.if的使用
// 1> if后面的()可以省略
// 2> 判断句不再有非0即真.必须有明确的Bool值:true/false

let a = 10

if a != 0{
    print("a不等于0")
}else{
    print("a等于0")
}

// 2.if elseif的使用
let score = 88

if score < 0 || score > 100 {
    print("没有意义的分数")
} else if score < 60 {
    print("不及格")
} else if score < 80 {
    print("及格")
} else if score < 90 {
    print("良好")
} else if score <= 100 {
    print("优秀")
}

// 3.三目运算符
let m = 40
let n = 30

var result = 0
//
//if m > n {
//    result = m
//} else {
//    result = n
//}

result = m > n ? m : n

print(result)
