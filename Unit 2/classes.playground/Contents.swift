//Bydefault we have to declare variable
class Person{
    var name:String="Rohit"
    var age:Int=19
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    func sayHello(){
        print("Hello! \(name)")
    }
}
let anyPerson=Person(name: "Riya", age: 20)
anyPerson.sayHello()



//inheritance
//base class
class Vehicle{
    var currentSpeed=0.0
    
    var description:String{
        "travelling at \(currentSpeed) miles per hour"
    }
    
    func makeNoise(){
        
    }
}
//super class
class Bicycle : Vehicle{
    var hasBasket=false
    
}
//sub class
class TendemCycle : Bicycle{
    var currentNumberOfPessangers=2
}

//instance of base class
var anyVehicle=Vehicle()
print("Vehicle: \(anyVehicle.description)")

//instance of super class
var bicycle=Bicycle()
bicycle.hasBasket=true
bicycle.currentSpeed=30.0
print("bicycle : \(bicycle.description)")
print(bicycle.hasBasket)

//instance of sub class
var tendem=TendemCycle()
tendem.currentNumberOfPessangers=4
tendem.currentSpeed=40.0
tendem.hasBasket=true
print("Tendem : \(tendem.description)")

class Train: Vehicle{
    override func makeNoise(){
        print("choo choo!")
    }
}
let train=Train()
train.makeNoise()

class Car:Vehicle{
    var gear=1
    override var description: String{
        super.description + " in gear \(gear)"
    }
}
var car=Car()
print(car.description)



class Person1{
    let name:String
    
    init(name: String) {
        self.name = name
    }
}
class Student: Person1{
    var favoriteSub: String
    init(name: String,favoriteSub: String) {
        self.favoriteSub = favoriteSub
        super.init(name: name)
    }
}
var anyPerson1=Person1(name: "Rohit")
print(anyPerson1.name)
var anyStudent=Student(name: "Rahul", favoriteSub: "Maths")
print(anyStudent.name)

//refernce type (we will get same value while in structure we get different value bcz of value type)
class AnotherPerson{
    let name:String
    var age:Int
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
var jack=AnotherPerson(name: "Jack", age: 24)
print(jack.age)
var myFriend=jack
print(myFriend.age)
jack.age += 1
print(jack.age)
print(myFriend.age)

struct SomePerson{
    var name:String
    var age:Int
}
var jack1=SomePerson(name: "Jack", age: 21)
var friend=jack1

print(jack1.age)
print(friend.age)

jack1.age += 1
print(jack1.age)
print(friend.age)
