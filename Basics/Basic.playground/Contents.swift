import UIKit
print("hello world")
let name = "Niharika Swain"

// constant = let , and varible = var

print(name)
var age = 20
var wt  : Int = 57
var goal = 28
print(goal)
goal = 47
print(goal)

// we can use emoji as  variable
 var emoji😌 = "calm"

var a = 2.3
print(type(of: a))

// structure
struct Student{
    let first_name :String
    let second_name : String
    
    func studentInfo(){
        print("The student name is \(first_name) \(second_name)")
    }
}

// object creation

let stud1 = Student(first_name: "Niharika", second_name: "Swain")
stud1.studentInfo()

//
var x:Int

//increase the readibility
var largePrettyNUm = 100_000_000

//  OPERATORS
let  v = 3
let y = 0.988766
let p = Double(v) + y
print(p)
