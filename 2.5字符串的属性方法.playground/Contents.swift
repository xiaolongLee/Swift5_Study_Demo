import UIKit

 let intStr = "28"
Int(intStr) //给字符串常量添加类型包裹，可以将字符串强制转换为制定的类型

var message : String = "You got 3 apples"
message.hasPrefix("apples")
message.hasPrefix("You")
message.uppercased()
message.lowercased()
message.capitalized //将字符串中的单词的首字母，转换为大写模式
message.isEmpty
message.components(separatedBy: " ")
message.caseInsensitiveCompare("You got 3 apples").rawValue // 将两个字符串进行比较，并且不区分大小写
message.caseInsensitiveCompare(message.uppercased()).rawValue //将当前字符串和大写后的字符串进行比较，并且不区分大小写
message.caseInsensitiveCompare("You got 3 apples").rawValue
message.contains("apples")
message.distance(from: message.startIndex, to: message.endIndex) //判断字符串中的两个索引之间的距离
message.lengthOfBytes(using: .utf8)  //获得字符串在指定编码模式下的字节长度
//message.ranges(of: "got").lowerBound //分别获得指定字符串，在当前字符串中的范围的起点和结束点，两个结果都是索引类型
//message.ranges(of: "got").upperBound

"北京".applyingTransform(StringTransform.toLatin, reverse: false) //获得中文字符串的拼音和声调

message.append(".")
message.append(" Congratulations")
message.insert("!", at: message.startIndex)
message.insert(contentsOf: "Hi, ", at: message.startIndex) //使用插入方法，往字符串的头部插入一些字符

let index = message.index(message.startIndex, offsetBy: 3) //获得从字符串的头部开始，向后移动3位之后的位置
print(message[..<index])

let startIndex = message.index(message.startIndex, offsetBy: 14)
let endIndex = message.index(message.endIndex, offsetBy: -17)

let range = startIndex ..< endIndex //创建一个指定起始位置和终止位置的索引区域
print(message[range])

message.replaceSubrange(range, with: "stars") //将指定索引区域的字符串进行替换
message = "I have 5 stars and you have 5 stars too."
message.replacingOccurrences(of: "stars", with: "apples")

var title = "Interactive tutorials for Xcode and Swift!"
let startIndexOfTilte = title.index(title.endIndex, offsetBy: -16)

let endIndexOfTitle = title.index(title.endIndex, offsetBy: -6)
let rangeOfTitle = startIndexOfTilte ..< endIndexOfTitle
title.removeSubrange(rangeOfTitle)
title.removeAll()

