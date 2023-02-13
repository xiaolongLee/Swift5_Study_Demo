import UIKit

let array1 = [[2,5],[5,6]]
let array2 = array1.map { (subarray) -> Int in
    
    var sum = 1
    for item in subarray {
        
        sum = sum * item
    }
    
    return sum
}

print(array2)
