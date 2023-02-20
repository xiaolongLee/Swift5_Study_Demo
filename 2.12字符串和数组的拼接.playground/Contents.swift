import UIKit

let sourceString = "www.hdjc8.com"
// split函数，字符串的函数，按条件分割字符串，为子字符串创建集合。与Objective-C中的componentsSeparatedByString:方法类似。
// swift自动提供隐含的变量名，以$0开始
let splittedArray = sourceString.split { $0 == "."}
//splittedArray
//
//
//let splittedArray2 = sourceString.split(separator: ".")
//splittedArray2
//
//let splittedArray3 = sourceString.split { $0.isNumber }
//splittedArray3
//let joinedString = splittedArray.joined()
//joinedString
//
//let joinedString2 = splittedArray.joined(separator: ".")
//joinedString2

let urlArray = ["host", "siteName", "siteType"]

let zippedOne = zip(urlArray, splittedArray) // zip函数旨在将两个序列合并为一个元组序列

for (label, value) in zippedOne
{
    print("\(label): \(value)")
}


//swift 自动为闭包提供了参数缩写功能，可以直接通过 $0和
//$1等来表示闭包中的第一个第二个参数，并且对应
//的参数类型会根据函数类型来进行推断。如下代码：
//
//不使用 $0、$1来代替闭包参数
//let sortedArray = [2,3,5,6,7]
//let tempSum = sortedArray.sorted { (a, b) -> Bool in
//return a > b
//}
//print(sortedArray) //[7, 6, 5, 3, 2]
//
//使用$0 ，$1
//let sortArray = sortedArray.sorted(by: {$0 < $1})
//print(sortArray) //[2, 3, 5, 6, 7]
//
//通过上面的代码可以发现使用$0、$1的话，参数类型可以自动判断，并且 in关键词可以省略，也就是
//只用写函数体就可以了。
 
