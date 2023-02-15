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
 intArray.shuffled()
 
 intArray += [7]
 intArray.append(8)
 intArray[2...4] = [9, 10]
 intArray
 intArray[2] = 11
 intArray
 intArray.insert(20, at: 4)
 
 intArray.dropFirst()
 intArray
 intArray.popLast()
 intArray
 intArray.remove(at: 1)
 intArray

 var nickName = ["Jerry Lee", "Jimmy", "Smith", "John", "Stone", "Tiger"]
 nickName.removeAll {$0.hasPrefix("j")}
 print(nickName)
 
intArray.sorted()
intArray.sorted(by: {$0 > $1})
intArray

var wordArray = ["Swift", "Mac", "iPad", "Objective-c", "SwiftUI"]
wordArray.sort(by: {leftone, rightOne in
    return leftone.count < rightOne.count
    
})
 


