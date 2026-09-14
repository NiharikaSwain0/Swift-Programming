var myString:String?="Apple"
print(myString ?? "No value")
if myString != nil{
    print("Hello Today")
}else{
    print("No value")
}

struct Book{
    var name: String
    var publicationYear:Int?
}
let firstBook=Book(name: "A Christmas Carole", publicationYear: 1843)
let secondBook=Book(name: "David Copperfield", publicationYear: 1849)
let thirdBook=Book(name: "A Tale Of Two cities", publicationYear: 1859)
let unPublishedBook=Book(name: "Rabel and Lion", publicationYear: nil)

if firstBook.publicationYear != nil{
    let actualYear=firstBook.publicationYear!
    print(actualYear)
}else{
    print("Not published yet")
}
//optional binding
if let unwrappedPublicationYear=unPublishedBook.publicationYear{
    print("The book is published in the year \(unwrappedPublicationYear)")
}else{
    print("Not Published Yet")
}
let string="123"
let possibleNumber=Int(string)
print(possibleNumber ?? "")

func printFullName(firstName: String, middleName: String?, lastName:String){
    print("My name is \(firstName)\(middleName ?? " ")\(lastName)")
}
printFullName(firstName: "Rahul", middleName: nil, lastName: "Singh")

struct Toddler{
    var name:String
    var monthsOld:Int
    init?(name: String, monthsOld: Int) {
        if monthsOld < 12 || monthsOld > 36{
            return nil
        }else{
            self.name = name
            self.monthsOld = monthsOld
        }
    }
}
let toddler=Toddler(name: "Johana", monthsOld: 17)
if let myToddler=toddler{
    print("\(myToddler.name) is \(myToddler.monthsOld) months old.")
}else{
    print("My child is not a toddler")
}

struct Address{
    var buildingNumber:String
    var streetName:String
    var apartmentNumber:String?
}
struct Residence{
    var address:Address?
}
struct Person{
    var age:Int
    var residence:Residence?
    
}
let myAddress=Address(buildingNumber: "6B", streetName: "KP2", apartmentNumber: "A1")
let residence=Residence(address: myAddress)
let person=Person(age: 28, residence: residence)
if let theResidence=person.residence{
    if let theAddress=theResidence.address{
        if let theApartmentNumber=theAddress.apartmentNumber{
            print("She lives in the apartment Number \(theApartmentNumber)")
        }
    }
}
//optional chaining
if let theapartmentNumber=person.residence?.address?.apartmentNumber{
    print("She lives in the apartment Number \(theapartmentNumber)")
}
