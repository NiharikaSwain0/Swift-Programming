//Array
var names: [String]=["Rohit","rahul","Riya"]
print(names)
if names.contains("Rohit"){
    print("Name found")
}
print(names.count)
let firstName=names[0]
print(firstName)
names[1]="Richa"
print(names)

var anotherNames=["Neha"]
anotherNames.append("Joy")
anotherNames+=["rehan","disha"]
print(anotherNames)
anotherNames.insert("Niharika", at:0)
print(anotherNames)
anotherNames.remove(at:0)
print(anotherNames)
anotherNames.removeLast()
print(anotherNames)
//print(anotherNames.removeAll())
print(anotherNames.isEmpty)
anotherNames[0].append("Niharika")//means editing at the specific index
print(anotherNames)

let num=[4,5,6]
if num.contains(6){
    print("6 is found")
}
var numbers:[Int]=[10,-5,2]
let c = num + numbers
print(c)

var number=[Int]()
//var number:[Int]=[]
//var number: Array<Int>=[]
print(number)

var anotherNum=[Int](repeating: 2, count:10)
print(anotherNum)

let a=[1,2,3]
let b=[4,5,6]
let d=[a,b]
print(d)
print(d[0][2])


//dictionary
var marks=["Physics":92,"Chemistry":78,"Maths":98]
//print(marks["Physics"])
//print(marks["Geography"])
marks["Physics"]=94
print(marks)
print(marks)
print(marks)
print(marks)
marks.updateValue(80, forKey: "Chemistry")
print(marks)

if let mark = marks["Physics"]{
    print("Marks is \(mark)")
}else{
    print("No such subject")
}

marks["Maths"]=nil
print(marks)

print(marks.keys)
print(marks.values)
