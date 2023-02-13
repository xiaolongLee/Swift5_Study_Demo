import UIKit

 let intStr = "28"
Int(intStr)

var message : String = "You got 3 apples"
message.hasPrefix("apples")
message.hasPrefix("You")
message.uppercased()
message.lowercased()
message.capitalized
message.isEmpty
message.components(separatedBy: " ")
message.caseInsensitiveCompare("You got 3 apples").rawValue
message.caseInsensitiveCompare(message.uppercased()).rawValue
message.caseInsensitiveCompare("You got 3 apples").rawValue
message.contains("apples")
message.distance(from: message.startIndex, to: message.endIndex)
message.lengthOfBytes(using: .utf8)
//message.ranges(of: "got").lowerBound
//message.ranges(of: "got").upperBound

"北京".applyingTransform(StringTransform.toLatin, reverse: false)

message.append(".")
message.append(" Congratulations")
message.insert("!", at: message.startIndex)
message.insert(contentsOf: "Hi, ", at: message.startIndex)

let index = message.index(message.startIndex, offsetBy: 3)
print(message[..<index])

let startIndex = message.index(message.startIndex, offsetBy: 14)
let endIndex = message.index(message.endIndex, offsetBy: -17)

let range = startIndex ..< endIndex
print(message[range])

message.replaceSubrange(range, with: "stars")
message = "I have 5 stars and you have 5 stars too."
message.replacingOccurrences(of: "stars", with: "apples")

var title = "Interactive tutorials for Xcode and Swift!"
let startIndexOfTilte = title.index(title.endIndex, offsetBy: -16)

let endIndexOfTitle = title.index(title.endIndex, offsetBy: -6)
let rangeOfTitle = startIndexOfTilte ..< endIndexOfTitle
title.removeSubrange(rangeOfTitle)
title.removeAll()

