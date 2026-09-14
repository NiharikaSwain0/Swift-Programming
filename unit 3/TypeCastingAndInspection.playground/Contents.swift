//Type Casting and Inspection

class Animal{
    var animalName:String
    var animalAge:Int
    init(animalName: String, animalAge: Int) {
        self.animalName = animalName
        self.animalAge = animalAge
    }
}

class Cat:Animal{
    var catBreed:String
    var catName:String
    init(catBreed: String, catName: String) {
        self.catBreed = catBreed
        self.catName = catName
        super.init(animalName: "", animalAge: 1)
    }
}
class Dog:Animal{
    var dogBreed:String
    var dogName:String
    init(dogBreed: String, dogName: String) {
        self.dogBreed = dogBreed
        self.dogName = dogName
        super.init(animalName: "", animalAge: 1)
    }
}
class Bird:Animal{
    var birdType:String
    var birdName:String
    init(birdType: String, birdName: String) {
        self.birdType = birdType
        self.birdName = birdName
        super.init(animalName: "", animalAge: 1)
    }
}
class Lion:Animal{
    var lionAge:Int=1
}
func getPet()->Animal{
    var someAnimal=Dog(dogBreed: "Golden Retriever", dogName: "Tommy")
    return someAnimal
}

var myFirstPet=getPet()

//Type Inspection is "is"
if myFirstPet is Dog{
    print("My First pet is a Dog.")
}else if myFirstPet is Cat{
    print("My First pet is a Cat.")
}else{
    print("Its a Bird.")
}

var somePets=[Cat(catBreed: "Persian", catName: "Tom"),Dog(dogBreed: "Pom", dogName: "Doggy"),Cat(catBreed: "Persian", catName: "Tom2"),Bird(birdType: "Parrot", birdName: "Parrot")]
var dogCount=0
var catCount=0
var birdCount=0


for pet in somePets{
    if pet is Dog{
        dogCount+=1
    }
    else if pet is Cat{
        catCount+=1
    }else{
        birdCount+=1
    }
}
print("We have \(dogCount) dogs, \(catCount) cats, and \(birdCount) birds.")

func walkTheDog(dog:Dog){
    print("The dog is being walked.")
}
func cleanTheLitter(cat:Cat){
    print("The cat litter is being cleaned.")
}
func cleanTheCage(bird:Bird){
    print("The bird's cage is being cleaned.")
}

//as? conditional type casting
for pet in somePets{
    if let dogPet = pet as? Dog{
        walkTheDog(dog:dogPet)
    }else if let catPet = pet as? Cat{
        cleanTheLitter(cat: catPet)
    }else if let birdPet = pet as? Bird{
        cleanTheCage(bird:birdPet)
    }
}
////as! forceful type casting
//var someStreetDog = Dog(dogBreed: "Stray", dogName: "Nameless")
//cleanTheLitter(cat: someStreetDog as! Cat)


var someCollection:[Any] = [10,"Neha",90.0,walkTheDog(dog:)]
for collection in someCollection{
    if collection is Int{
        print("collection is Int of value \(collection)")
    } else if collection is String{
        print("collection is String of value \(collection)")
    }else if collection is Double{
        print("collection is double of value \(collection)")
    }
}

//AnyObject vs Any
var anotherCollection : [AnyObject] = [Animal(animalName: "Some Animal", animalAge: 12),Animal(animalName: "Some Animal", animalAge: 11)]
