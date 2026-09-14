var number=10
var result=number*3
func printNum(number:Int){
    print(number)
}
printNum(number:20)
print(number)


func printBottleCount(){
    var bottleCount=11
    print(bottleCount)
}
printBottleCount()

func printTenNames(){
    var name="Richard"
    for index in 1...10{
        print("\(index):\(name)")
    }
//    print(index)
    print(name)
}
printTenNames()

let points=100
for index in 1...3{
    let points=200
    print("Loop \(index): \(points+index)")
}
print(points)

var name: String?="Robert"

if let name=name{
    print("name is \(name)")
}

func exclaim(name:String?){
    if let name=name{
        print("Exclaim func was passed: \(name)")
    }else{
        print("No name")
    }
}
exclaim(name: "rohit")

func exclaimAnother(name:String?){
    guard let name=name else{
        return
    }
    print("Exclaim func was passed: \(name)")
}
exclaimAnother(name: "Reha")

struct Person{
    var name:String
    var age:Int
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
