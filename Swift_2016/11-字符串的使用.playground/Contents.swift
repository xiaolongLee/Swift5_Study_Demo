import UIKit

// 1.定义字符串
let str = "hello world"


// 2.遍历字符串中字符
for c in str {
    print(c)
}

// 3.字符串的拼接
// 3.1.字符串之间的拼接
let str1 = "小码哥"
let str2 = "IT教育"
// NSString stringwithFormat:@"%@%@", str1, str2]
let result = str1 + str2

// 3.2.字符串和其他标识符之间的拼接
let age = 18
let name = "why"
let height = 1.88

//NSString stringwhithFor
// 拼接其他标识符的格式: \(标识符的名称)
let info = "my name is \(name), age is \(age), height is \(height)";

// 3.3.字符串的格式化: 音乐播放器
let min = 3
let second = 04
//let timeStr = "0\(min):0\(second)"
let timeStr = String(format: "%02d:%02d", arguments: [min, second])

// 4.字符串的截取
let urlString = "www.520it.com"

// 将String类型转成NSString类型 string as NSString
let header =  (urlString as NSString).substring(to: 3)
let middle =  (urlString as NSString).substring(with: NSRange(location: 4, length: 5))
let footer = (urlString as NSString).substring(from: 10)
