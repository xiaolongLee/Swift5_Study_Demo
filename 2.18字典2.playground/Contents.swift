import UIKit

 let laptops = ["Acer Aspire 5 Slim Laptop": 364.99, "Lenovo Legion 5 Gaming Laptop": 999.99, "HP 15 Laptop": 629.00, "Apple MBP 15-inch Laptop": 1_399.99]
//filter 函数会调用一个名字为 isIncluded 的闭包，该闭包接受一个键值对作为参数，并返回一个布尔值。最终，基于返回的布尔值，filter 函数将决定是否将键值对添加到数组中。
//
//<重要> 原文中作者写道：对字典调用 Filter 函数，将返回一个包含元组类型的数组。但译者在 playground 中发现 返回值实际为字典类型的数组。
let filteredLaptops = laptops.filter { $0.value > 800.00 }
print("filteredLaptops: \(filteredLaptops)")

let filteredLaptops2 = laptops.filter { $0.key.hasPrefix("Apple")}
print("filteredLaptops2: \(filteredLaptops2)")
//swift4的Dicitonary多了一个叫grouping的新方法，将一个序列里的元素遍历一遍，然后每个元素返回一个所对应的key，然后将相同的key的元素放进一个数组作为这个key对应的value，最后返回一个分好组的Dictionary对象。
 
let groupedLaptops = Dictionary(grouping: laptops.keys) { $0.first! }
print("groupedLaptops: \(groupedLaptops)")

var devices = ["iPhone", "iPad", "iWatch", "iPhone"]
var devicesCounts = [String : Int]()

for device in devices {
     devicesCounts[device, default: 0] += 1
}

print("devicesCounts: \(devicesCounts)")

let scores = ["Math": 89,
              "Physics": 88,
              "Geography": 78,
              "History": 92]
//map 函数的返回值类型总是一个泛型数组。你可以返回包含任意类型的数组
let doubleScores = scores.map { $0.value * 2}
// Swift 中的字典 (Dictionary) 提供了一个 mapValues 方法，允许您对字典中所有值进行映射并返回一个新的字典
let roundedCities = scores.mapValues { score -> String in
    "Your score is \(score)."
}

print(doubleScores)
print(roundedCities)

let scores2 = ["Math": "89",
               "Physics": "88",
               "Geography": "none",
               "History": nil]
// 这个是针对于Dictionary的, 将Dictionary中的value进行解包，并将nil过滤掉
let compactMapValues = scores2.compactMapValues { $0 }
print(compactMapValues)

let compactMapValues2 = scores2.compactMapValues { Int($0 ?? "")}
print(compactMapValues2)
