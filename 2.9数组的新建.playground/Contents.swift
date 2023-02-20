import UIKit

 var stringArray = Array<String>()
 var floatArray = [Float]()
 var intArray = [1, 2, 3, 4, 5]
 intArray.count
 intArray.isEmpty
 intArray.contains(5)
 intArray.first
 intArray.last
 intArray.max()
 intArray.min()
 intArray.reverse()
 intArray.swapAt(1, 2)
 intArray.shuffled() // 打乱集合中元素的的顺序。
 
 intArray += [7]
 intArray.append(8)
 intArray[2...4] = [9, 10]
 intArray
 intArray[2] = 11
 intArray
 intArray.insert(20, at: 4)
 
 intArray.dropFirst() // 正向跳过元素创建数组, 跳过指定元素个数, 缺省值为1
 intArray
 intArray.popLast() //移除并返回数组中的第一个元素（optional）,数组为空则返回nil
 intArray
 intArray.remove(at: 1)
 intArray

 var nickName = ["Jerry Lee", "Jimmy", "Smith", "John", "Stone", "Tiger"]
 nickName.removeAll {$0.hasPrefix("j")}
 print(nickName)
 
intArray.sorted()
intArray.sorted(by: {$0 > $1}) // 返回原数组的排序结果数组，可以作用在数组变量和常量上
intArray

var wordArray = ["Swift", "Mac", "iPad", "Objective-c", "SwiftUI"]
// 在原数组上将元素排序，只能作用于数组变量上
wordArray.sort(by: {leftone, rightOne in
    return leftone.count < rightOne.count
    
})
 


