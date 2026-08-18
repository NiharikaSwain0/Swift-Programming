import UIKit

func displayPi(){
    print("3.1415926535")
}
displayPi()

func triple(value:Int){
    let result=value*3
    print("if i multiply the \(value) by 3 result will be :\(result)")
}
triple(value:15)

func add(firstNumber:Int , secondNumber:Int){
    let result=firstNumber+secondNumber
    print("result:\(result)")
}
add(firstNumber:5, secondNumber:10)


func add(_ firstNumber:Int, with secondNumber:Int){
    let result=firstNumber+secondNumber
    print("result:\(result)")
}
add(3, with:4)

func sayHello(to firstName: String, and secondName:String){
    print("sayHello to \(firstName) and \(secondName)")
}
sayHello(to:"Niharika", and:"Pratha")


func addNum(_ firstNum:Int,with secNum:Int)->Int{
    let result=firstNum+secNum
    return result
}
let result=addNum(3, with:9)
print(result)

func getDetails()->(String, Int){
    let name="Niharika"
    var age=19
    return (name, age)
}
print(getDetails())
let student=getDetails()
print("\(student.0) has age \(student.1)")

func changeName(_ name:String){
    var name=name
    name="Rahul"
    print("inside function :\(name)")
}
let studentName="Amit"
print("efore function call:\(studentName)")
changeName("Amit")
print("after function call :\(studentName)")

func changeName1(_ name:String)->String{
    var name=name
    name="Rahul"
    print("inside function :\(name)")
    return name
}
let studentName1="Amit"
print("before unc call:\(studentName1)")
let name=changeName1(studentName1)
print("after func call:\(name)")



func changeName2(_ name: inout String){
    name = "Rahul"
    print("inside function:\(name)")
}
var studentName2="Amit"
changeName2(&studentName2)
print("after func \(studentName2)")



func displayTeam(teamName:String, teamCaptain:String, homeTown:String, score:Int=0){
    print("\(teamName) has \(teamCaptain) in \(homeTown) has \(score)")
}
displayTeam(teamName: "India", teamCaptain: "Virat Kohli", homeTown: "Delhi")

func displayTeam1(_ teamName:String,teamCaptain:String="Virat Kholi",_ homeTown:String, score:Int=0){
    print("\(teamName) has \(teamCaptain) in \(homeTown) has \(score)")
}
displayTeam1("India","Delhi")



func checkCharacter(_ Character1: Character)->Bool{
    switch Character1{
    case "a","e","i","o","u":
//        print("\(Character1) is a Vowel")
        return true
    default:
//        print("\(Character1) is not a Vowel")
        return false
    }
}
let inputLetter:Character="i"
let result4=checkCharacter(inputLetter)

if result4==true{
    print("\(inputLetter) is a vowel")
}else{
    print("Not vowel")
}
print(result4)



func checkCharacter1(_ Character1: Character)->(Bool, Character){
//    let Character1:Character="a"
    switch Character1{
    case "a","e","i","o","u":
//        print("\(Character1) is a Vowel")
        return (true, Character1)
    default:
//        print("\(Character1) is not a Vowel")
        return (false, Character1)
    }
}
//let inputLetter1:Character="i"
let res=checkCharacter1("i")

if res.0 == true{
    print("\(res.1) is a vowel")
}else{
    print("Not vowel")
}


func studentRegistration(name:String, course:String)->(String,String){
//    let name="Niharika"
//    let course="Machine learning"
    return (name, course)
}
print(studentRegistration(name: "Niharika", course: "DSA"))



func studentRegistration1(_ name:String, registeredIn course:String){

    print("\(name) is registered in \(course)")
}
studentRegistration1("Neha", registeredIn: "DSA")



func multiply(_ firstNum : Int,by secondNum: Int)->Int{
    let mul=firstNum*secondNum
    return mul
}
print(multiply(10, by: 20))



func changeName(name2:String)->String{
    var name2=name2
    name2="Amit"
    print("inside name is \(name2)")
    return name2
}
let name2=changeName(name2:"Rahul")
print("new name:\(name2)")

func changeName1(name3: inout String){
    name3="Amit"
    print("inside Name:\(name3)")
}
var anotherName="Rahul"
changeName1(name3: &anotherName)
print("outside \(anotherName)")
