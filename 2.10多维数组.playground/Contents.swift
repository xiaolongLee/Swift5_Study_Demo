import UIKit

var numberArray1 = [1, 2, 3]
var numberArray2 = [4, 5, 6, 7]
var numberArray = [numberArray1, numberArray2]

var newArray = Array<Array<Int>>()
newArray.append(numberArray1)
newArray.append(numberArray2)

for subArray in newArray
{
    for num in subArray
    {
        print(num)
    }
}

// 声明
var array = Array<Array<Array<Array<Array<Int>>>>>()

//添加
array.append([[[[1,2],[3,4]]]])
array.append([[[[1,2],[3,4]]]])

//根据下标修改
array[1] = [[[[5,5],[3,4]]]]

//删除
array.remove(at: 0)
