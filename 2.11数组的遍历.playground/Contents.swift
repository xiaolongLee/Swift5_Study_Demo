import UIKit

var fruit = ["Apple", "Banana", "Pear"]
for i in 0..<fruit.count
{
    print(fruit[i])
}

for item in fruit
{
    print(item)
}

for element in fruit where element.hasPrefix("B") // 使用where子句将for循环中的内容过滤掉
{
    print(element)
}
//使用enumerated()方法进行数组遍历。
//enumerated()返回一个由每一个数据项索引值和数据值组成的元组。我们可以把这个元组分解成临时常量或者变量来进行遍历(可以同时得到每个数据项的值和索引值)
 
for (index, value) in fruit.enumerated()
{
    print("\(index): \(value)")
}
// 调用以相同的顺序作为序列中的每个元件上的给定的闭合for- in循环。
fruit.forEach {  element in
    print(element)
}

var fruitGroup2 = ["Watermelon", "Apple", "Pear"]
// 有序集合的 diff，通过 difference(from:) 方法，可以返回要删除哪些和添加哪些项目能够让两个集合相等。
let differences = fruitGroup2.difference(from: fruit)
print(differences)
// 值绑定：在case中匹配到的值可以临时绑定给一个常量或者变量，变量只在case的函数体里面有效，必要时let也可以是var.
for change in differences
{
    switch change
    {
    case let .remove(offset,_, _):
        fruit.remove(at: offset)
    case let .insert(offset, newElement, _):
        fruit.insert(newElement, at: offset)
    }
}

print(fruit)

extension Array where Element: Hashable
{
    func getDifference(from anotherOne: [Element]) -> [Element]
    {
        let firstSet = Set(self)
        let secondSet = Set(anotherOne)
        return Array(firstSet.symmetricDifference(secondSet))
    }
}


let difference = [1,2,3].getDifference(from: [2,3,4])
print(differences)
