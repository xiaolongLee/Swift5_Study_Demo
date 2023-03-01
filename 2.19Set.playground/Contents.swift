import UIKit

var scores : Set<Int> = Set<Int>()

var animals : Set<String> = ["Tiger", "Giraffe", "Zebra"]

let array = ["iPhone", "iPad", "iPhone"]
// 集合的构造器
let set = Set(array)
// 集合中元素的个数：
animals.count
animals.first
animals.isEmpty
let sortedArray : Array = animals.sorted()

for animal in animals {
    print("\(animal)")
}

animals.insert("Lion")
animals

animals.removeFirst()
animals

animals.dropLast()
animals

animals.remove(at: animals.index(animals.startIndex, offsetBy: 2))
animals

animals.remove("Zebra")
animals

var animalGroup1 : Set<String> = ["Tiger", "Giraffe", "Zebra"]

var animalGroup2 : Set<String> = ["Lion", "Zebra", "Deer"]
//使用 intersection(_:) 方法根据两个集合的交集创建一个新的集合。
//使用 symmetricDifference(_:) 方法根据两个集合不相交的值创建一个新的集合。
//使用 union(_:) 方法根据两个集合的所有值创建一个新的集合。
//使用 subtracting(_:) 方法根据不在另一个集合中的值创建一个新的集合。
animalGroup1 == animalGroup2
animalGroup1.union(animalGroup2)
animalGroup1.intersection(animalGroup2)
animalGroup1.subtract(animalGroup2)

//使用 isSubset(of:) 方法来判断一个集合中的所有值是否也被包含在另外一个集合中。
//使用 isSuperset(of:) 方法来判断一个集合是否包含另一个集合中所有的值。
//使用 isStrictSubset(of:) 或者 isStrictSuperset(of:) 方法来判断一个集合是否是另外一个集合的子集合或者父集合并且两个集合并不相等。
//使用 isDisjoint(with:) 方法来判断两个集合是否不含有相同的值（是否没有交集）。

animalGroup1.isSubset(of: animalGroup2)
animalGroup1.isSuperset(of: animalGroup2)
animalGroup1.isDisjoint(with: animalGroup2)
