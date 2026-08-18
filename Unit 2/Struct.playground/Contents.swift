////
//////var name:String="Niharika"
////
////struct Person{
////    var name: String
////    var age: Int
////    var gender: String
////    
////    func sayHello(){
////        print("Hello ,My name is \(name). I am \(age) years old and I am a \(gender)")
////    }
////}
////var firstPerson=Person(name: "Rohit", age: 21, gender: "Male")
////var secondPerson=Person(name: "Riya", age: 23, gender: "Female")
////
////print(secondPerson.gender)
////
////firstPerson.age+=1
////print(firstPerson.age)
////
////firstPerson.sayHello()
////secondPerson.sayHello()
////
////struct Car{
////    var carType: String
////    var color: String
////    var yearOfManufacture: Int
////    var topSpeed: Int
////    func startEngine(){
////        print("Car is \(carType),color is \(color)")
////    }
////    func drive(){
////        print("Driving \(carType),color is \(color),Manufacture year is \(yearOfManufacture)")
////    }
////    func park(){
////        print("\(carType) is parked")
////    }
////}
////
////var firstCar=Car(carType: "Honda", color:"Black", yearOfManufacture: 2024, topSpeed: 400)
////var secondCar=Car(carType: "Mahindra", color: "white", yearOfManufacture: 2025, topSpeed: 300)
////var thirdCar=Car(carType: "Tesla", color: "Red", yearOfManufacture: 2023, topSpeed: 400)
////
////firstCar.startEngine()
////secondCar.drive()
////thirdCar.park()
////
////
//////Default initializer(if we dont write .init it also give default value...like syntactic sugar)
////let string=String.init()
////let bool=Bool.init()
////let int=Int.init()
////
//////Syntactic sugar (there will be only return one line...without return keyword we can directly return)
////func sumOfNums(firstNum:Int, secondNum:Int)->Int{
////    return firstNum+secondNum
////}
////print("The String contains value \(string)")
////print("The bool contains value \(bool)")
////print("The integer contains value \(int)")
////
////
////struct Odometer{
////    var count: Int
////    init() {
////       count = 0
////    }
////}
////var myOdometer=Odometer()
////print(myOdometer.count)
////
////struct Odometer1{
////    var count: Int=0
////}
////var myOdometer1=Odometer1()
////print(myOdometer1.count)
////
//////Memberwise initializer
////struct Chair{
////    var hasLegs:Bool
////    var numberOfLegs: Int
////    
////    init(hasLegs: Bool, numberOfLegs: Int) {
////        self.hasLegs = hasLegs
////        self.numberOfLegs = numberOfLegs
////    }
////}
////var redChair=Chair(hasLegs: false, numberOfLegs: 0)
////
////
//////custom initializer
////struct Temperature{
////    var celcius: Double=0.0
//////    var fahrenheit:Double=0.0
////    init(celcius:Double){
////        self.celcius=celcius
////    }
////    init(fahrenheit:Double) {
////        celcius = (fahrenheit-32)*9/5
////    }
////    init(){
////        celcius=90
////    }
////    init(kelvin:Double){
////        celcius=kelvin-273.15
////    }
////}
////var temperature=Temperature( fahrenheit:98.6)
////var temperature1=Temperature(celcius:30.0)
////var temperature2=Temperature()
////var temperature3=Temperature(kelvin:300)
////
////print(temperature.celcius)
////print(temperature1.celcius)
////print(temperature2)
////print(temperature3)
////
////
////struct Book{
////    var author: String
////    var title: String
////}
////var myFavBook=Book(author: "J.K. Rowling", title: "The chamber of secrets")
////var myOtherBook=myFavBook
////myFavBook.author="Fredrick Beckman"
////print(myOtherBook.author)
////print(myFavBook.author)
////
//
//
//
//struct Size{
//    var height:Double
//    var width:Double
//    func area()->Double{
//        width * height
//    }
//}
//var mySize=Size(height: 10.0, width: 20.0)
//print(mySize.area())
//
//
//struct Odometer{
//    var count: Int = 0
//    mutating func increase()->Int{
//        count += 1
//        return count
//    }
//    mutating func increaseBy(by amount:Int){
//        count+=amount
//    }
//    mutating func reset(){
//        count=0
//    }
//}
//var odometer=Odometer()
//print(odometer.count)
//odometer.increase()
//print(odometer.count)
////odometer.increaseBy(by: 15)
////print(odometer.count)
////odometer.reset()
////print(odometer.count)
//
//
////struct Temperature{
////    let celsius:Double
////    let fahrenheit: Double
////    let kelvin: Double
////    init(celsius: Double) {
////        self.celsius = celsius
////        self.fahrenheit = celsius*9/5+32
////        self.kelvin = celsius+273.15
////    }
////    init(fahrenheit:Double){
////        self.fahrenheit=fahrenheit
////        celsius=(fahrenheit-32)*5/9
////        kelvin=celsius+273.15
////    }
////    init(kelvin:Double){
////        self.kelvin=kelvin
////        celsius=kelvin-273.15
////        fahrenheit = celsius*9/5+32
////    }
////}
////let temperature=Temperature(celsius: 0)
////print(temperature.celsius, temperature.fahrenheit, temperature.kelvin)
////let anotherTemperature=Temperature(fahrenheit: 32)
////print(anotherTemperature.fahrenheit, anotherTemperature.celsius, anotherTemperature.kelvin)
////let nextTemperature=Temperature(kelvin: 273.15)
////print(nextTemperature.fahrenheit, nextTemperature.kelvin, nextTemperature.celsius)
//
////computed property
//struct Temperature{
//    var celsius:Double
//    
//    var fahrenheit:Double{
//        celsius*1.8+32
//    }
//    var kelvin:Double{
//        celsius+273.15
//    }
//}
//let currentTemperature=Temperature(celsius: 32)
//print(currentTemperature.fahrenheit, currentTemperature.kelvin)
//
//
////property observers
//struct StepCounter{
//    var totalSteps: Int = 0 {
//        willSet{
//            print("About to set totalSteps to \(newValue)")
//        }
//        didSet{
//            if totalSteps>oldValue{
//                print("Added \(totalSteps-oldValue) steps")
//            }
//        }
//    }
//}
//var steps=StepCounter()
//steps.totalSteps=100
//steps.totalSteps=200
//

//struct Temperature{
//    static let boilingPoint = 100.0
//    
//    static func convertedFromFahrenheit(_ temperatureInFahrenheit: Double){
//        (((temperatureInFahrenheit-32)*5)/9)
//    }
//    
//}
//let boilingPoint=Temperature.boilingPoint
//let currentTemperature = Temperature.convertedFromFahrenheit(99)
//let positiveNumber=abs(-4.04)

struct Size{
    var height:Double
    var width:Double
}
var someSize=Size(height: 10.0, width: 20.0)
print(someSize.width)
var anotherSize=someSize
someSize.width=30.0
print(anotherSize.width)
print(someSize.width)

//struct Car{
//    var color: Color
//    
//    var description: String{
//        "This is a \(self.color) car."
//    }
//}
//var car1=Car(color: "Black")
