import UIKit

 var nickNames = ["Jerry Lee", "Jimmy", "Smith", "John", "Stone", "Tiger"]
// 对集合中的元素按照某个条件进行过滤，并返回一个新集合
 
nickNames = nickNames.filter { $0.hasPrefix("J") }
nickNames

var myScores = [66, 80, 93, 74, 89, 80]
// allSatisfy 返回一个布尔值，指示序列的每个元素是否满足给定的条件。需要所有元素都满足。
let isPassed = myScores.allSatisfy({ $0 > 60 })
isPassed

// 返回满足给定谓词的序列的第一个元素。
let firstNumberOver80 = myScores.first(where: { $0 > 80 })
firstNumberOver80

let lastNumberOver80 = myScores.last(where: { $0 > 80 })
lastNumberOver80

//返回指定值在集合中出现的索引。
let firstIndexOf80 = myScores.firstIndex(of: 80)

let lastIndexOf80 = myScores.lastIndex(of: 80)
// 返回集合元素满足给定谓词的第一个索引。
let firstIndexBiggerThan90 = myScores.firstIndex(where: { $0 > 90 })
firstIndexBiggerThan90
// 会根据条件把集合里的元素重新排序，符合条件的元素移动到最后，返回一个两个部分分界元素的索引
let partitionScores = myScores.partition { $0 > 80 }
partitionScores
myScores
