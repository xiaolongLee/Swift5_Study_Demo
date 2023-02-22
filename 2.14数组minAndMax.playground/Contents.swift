import UIKit
//min() 返回数组中最小的元素
//max() 返回数组中最大的元素
//min(by:) 利用给定的方式比较元素，并返回数组的最小元素
//max(by:) 利用给定的方式比较元素，并放回数组的最大元素
var sourceArray = [1, 2, 3, 4, 5, 6, -8]

let minElement = sourceArray.min()
minElement

let minElementByFilter = sourceArray.min { $0 % 2 < $1 % 2}
minElementByFilter

let maxElement = sourceArray.max()
maxElement

let maxElementByFilter = sourceArray.max { abs($0) < abs($1) }
maxElementByFilter

let sourceDictionary = ["physicsScore" : 87, "MathScore" : 79, "chemistryScore" : 92]
let maxScore = sourceDictionary.max { $0.value < $1.value }
maxScore
