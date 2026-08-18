import UIKit

let greetings="""
A:Today is Thrusday.
B:It is raining.
"""
print(greetings)

let greeting="\'Hello\""
print(greeting)
print("Hello\\World")

let greeting1=""
let emptyString=String()
let anotherString="abc"
let anotherString2=String("bcd")

print("result:\(greeting1)")
print("result:\(emptyString)")
print("another String:\(anotherString)")
print("another String:\(anotherString2)")

var myString=""
if myString.isEmpty{
    print("This String is empty")
}

let string1:Character="a"

let string2="Hello"
let string3="World"

var myString1=string2 + "\t" + string3
myString1+="\tHello\tWorld"
print(myString1)

let name="Amit"
let age=30
print("\(name) is \(age) years old")

let month="January"
let otherMonth="January"
let lowercaseMonth="january"

if month==otherMonth{
    print("They are same")
}

if month != lowercaseMonth{
    print("They are not same")
}

let string4 = "Cafe\u{301}"
let string5="Café"
print(string4==string5)

let name1="jony Appleseed"
if name1.lowercased() == "Jony Applessed".lowercased(){
    print("equal")
}
print(name1.lowercased())
print(name1.uppercased())
print(name1.count)

let cow="🐮"
print("🐮".count)
print(cow)

