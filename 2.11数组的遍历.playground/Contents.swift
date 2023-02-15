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

for element in fruit where element.hasPrefix("B")
{
    print(element)
}

for (index, value) in fruit.enumerated()
{
    print("\(index): \(value)")
}

fruit.forEach {  element in
    print(element)
}

var fruitGroup2 = ["Watermelon", "Apple", "Pear"]
let differences = fruitGroup2.difference(from: fruit)
print(differences)
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
