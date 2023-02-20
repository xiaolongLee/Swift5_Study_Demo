import UIKit

// map函数接收一个闭包做参数，闭包本身参数是原数组的元素，闭包返回值是一个泛型，由泛型对象组成的数组作为map函数的返回值。
let array1 = [[2,5],[5,6]]

let array2 = array1.map { (subarray) -> Int in
    
    var sum = 1
    for item in subarray {
        
        sum = sum * item
    }
    
    return sum
}

print(array2)
