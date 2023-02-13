import UIKit

let hello = "Hello"
let entity = "CookKeTang"
var helloWords = hello + "," + entity
helloWords += "!"
helloWords.count

let number = 3
var combinedString = "You got \(number) star(s)"
for character in combinedString
{
    print(character)
}

helloWords == combinedString
