//Loops

//for-in Loop
for _ in 1...5{
    print("Go for it")
}
for value in 1..<5{
    print("The number is \(value)")
}

for name in ["Anny","karan","Priya"]{
    print("Hello, \(name)")
}

for (index, names) in ["Rohit","Riya","Ram"].enumerated(){
    print("The name at position \(index+1) is \(names)")
}

var stock=["AC":500, "TV":100, "Refrigerator":200]
for (product,count) in stock{
    print("There are \(count) \(product) in stock.")
}


struct Product{
    var name:String
    var price:Int
}
var myProducts=[Product(name: "Bread", price: 50), Product(name: "Butter", price: 350), Product(name: "Milk", price: 30)]
var totalAmount:Int=0
for product in myProducts{
    totalAmount += product.price
}
print("Total amount is: \(totalAmount)")

for letter in "Galgotias"{
 print("The letter is \(letter)")
}

//while
var numbersOfLives=3
while numbersOfLives>0{
    print("play")
    numbersOfLives-=1
    var opponentLeft=true
    if opponentLeft{
        print("Opponent left")
        break
    }
}
print("Game ended")

var users=["Iron-man":"Inactive", "Batman":"Active", "Superman":"Inactive"]

for (username, status) in users{
    if status == "Active"{
        continue
    }
    print("The user \(username) is \(status)")
}
