import UIKit

var str = "Hello, playground"

print(str)


var a = 2;
var b = 100;
a + b;
var value = 2
while value < 10000{
    value *= 2
}



let aa = "aa"

let bb : String = "bb"

let intA : Int = 100
let binaryInt = 0b10001
let octalInt = 0o21
let hexInt = 0x11

let intCool = 100_0000

Int.max
Int.min
UInt.max
UInt.min

let sumA = 1
let sumB = 2.0

let resultC = sumA + Int(sumB)

let imTrue = true
let imFalse: Bool = false

if imTrue {
    print("I am true")
}else {
    print("I am false")
}

let point = (3, 4)
point.0
point.1


let (x, y) = point

x
y

let pointA = (x:3, y:4)
pointA.x
pointA.y

let loginResult = (true, "Vicent")

let (isLoginSuccess, _) = loginResult

isLoginSuccess

print(1)
print(1,2,3)
print(1, 2, 3, separator:"--")
print(1, 2, 3, separator:"--", terminator:":)")


print(x, "*", y, "=", x*y)

print("字符串插值\(isLoginSuccess)")

let battery = 18
var batteryColor:UIColor
if battery < 18 {
    batteryColor = UIColor.red
}else {
    batteryColor = UIColor.green
}

batteryColor = battery < 18 ? UIColor.red : UIColor.green

for index in 0...10 {
    index
}

for index in 0..<10 {
    index
}

let arr = ["a","b","c"]

for i in 0..<arr.count {
    print(arr[i])
}
