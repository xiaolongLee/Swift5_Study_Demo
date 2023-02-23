import UIKit

//prefix() 获取数组前面指定个数的元素组成的 ArraySlice
//prefix(upTo: ) 获取数组到指定位置(不包含指定位置)前面的元素组成的 ArraySlice
//prefix(through: ) 获取数组到指定位置(包含指定位置)前面的元素组成的 ArraySlice
//prefix(while: ) 获取数组前面符合条件的元素(到第一个不符合条件的元素截止)组成的 ArraySlice
// 

let sourceArray = [1, 2, 3, 4, 5, 4, 3]
let prefixFilterArray = sourceArray.prefix { $0 < 4}
prefixFilterArray

let prefixUptoArray = sourceArray.prefix(upTo: 3)
let prefixArray = sourceArray.prefix(2)
let prefixThroughArray = sourceArray.prefix(through: 2)

//dropFirst(: ) “移除”原数组前面指定个数的元素得到一个 ArraySlice
//dropLast(: ) “移除”原数组后面指定个数的元素得到一个 ArraySlice
//drop(: ) “移除”原数组符合指定条件的元素得到一个 ArraySlice 条件为真时丢弃元素，不为真则返回其余的元素（和 prefix 类似，不过返回相反的集合）

let dropArray = sourceArray.drop { $0 < 4 }
dropArray

let dropFirstArray = sourceArray.dropFirst(3)
let dropLastArray = sourceArray.dropLast(3)



