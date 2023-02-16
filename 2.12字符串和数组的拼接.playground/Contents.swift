import UIKit

let sourceString = "www.hdjc8.com"
let splittedArray = sourceString.split { $0 == "."}
//splittedArray
//
//
//let splittedArray2 = sourceString.split(separator: ".")
//splittedArray2
//
//let splittedArray3 = sourceString.split { $0.isNumber }
//splittedArray3
//let joinedString = splittedArray.joined()
//joinedString
//
//let joinedString2 = splittedArray.joined(separator: ".")
//joinedString2

let urlArray = ["host", "siteName", "siteType"]

let zippedOne = zip(urlArray, splittedArray)

for (label, value) in zippedOne
{
    print("\(label): \(value)")
}
