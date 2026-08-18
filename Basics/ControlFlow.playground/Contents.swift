import UIKit
let waterTemperature=100
if waterTemperature>=100{
    print("The water is boiling")
}else{
    print("Not boiling")
}

let number=100
let result=number>100
print(result)

let isRaining=true
if !isRaining{
    print("You can go outside")
}else{
    print("Now you can go")
}
 let user="email"
if user=="email" || user=="number"{
    print("you can go forward")
}

let phone=8881239812
let ph=String(phone)
let count1=ph.count

if count1==10{
    print("OTP send")
}


let isPluggedIn=true
let hasBatteryPower=false
if isPluggedIn || hasBatteryPower{
    print("You can use")
}

let temperature=65
if temperature>=65 && temperature<=75{
    print("Temperature Perfect")
}else if temperature>75{
    print("temperature is hot")
}else {
    print("Temperature is cold")
}

let numbersOfWheels=2
switch numbersOfWheels{
case 0:
    print("No wheels")
case 1:
    print("Unicycle")
case 2:
    print("Bicycle")
case 3:
    print("Auto")
default:
    print("Too many wheels")
}

switch temperature{
case Int.min...65:
    print("Too cold")
case 65...75:
    print("Perfect")
default:
    print("Too Hot")
}

let character="z"

switch character{
case "a","e","i","o","u":
    print("V")
default:
    print("C")
}

let numbers1=10
let numbers2=39
var largest:Int
if numbers1>numbers2{
    print("numbers1 is greater")
}else{
    print("numbers2 is greater")
}

largest=numbers1 > numbers2 ? numbers1:numbers2
print(largest)
