import UIKit

let binaryBits : UInt8 = 0b00101011
let invertedBinaryBits = ~binaryBits

let firstBits : UInt8 = 0b11111100
let lastBits : UInt8 = 0b00111111
let resultBits = firstBits & lastBits
let outputBits = firstBits ^ lastBits

let shiftBits : UInt8 = 4
shiftBits << 2
shiftBits << 4
shiftBits >> 2

var potentialOverflow = Int16.max
potentialOverflow &+ 2

let x = 1
let y = x & 1

