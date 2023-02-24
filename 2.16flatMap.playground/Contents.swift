import UIKit
// flatMap: 对数组的每一个元素做一次处理，返回处理后的数组。
// 返回后的数组中不存在nil， 同时也会把Optional解包。
// flatMap还能把多维数组变成一维数组。
// flatMap也能把两个不同的数组合并成一个数组，这个合并的数组元素个数是前面两个数组元素个数的乘积
//let array = [[1, 2, 3], [4, 5]]
//let flatArray = array.flatMap{ $0 }
//print(flatArray)

let array2 = [[1, 2, 3], [4, nil, 5]]
//let flatArray2 = array2.flatMap{ $0 }
//print(flatArray2)

// 4.1之后如果闭包中返回的值是可选的话，就要使用compactMap代替flatMap了，不然的话就会警告。
//let flatArray3 = array2.flatMap { $0 }.flatMap { $0 }
let flatArray3 = array2.flatMap { $0 }.compactMap { $0 }
print(flatArray3)

let websiteString : String? = "http://www.hdjc8.com?username=SwiftMan"

guard let website = websiteString else {
    assert(false)
}

guard let finalUrl = URL(string: website) else {
    assert(false)
}

finalUrl.query

websiteString.flatMap(URL.init)?.query
//websiteString.map(URL.init)?.query

