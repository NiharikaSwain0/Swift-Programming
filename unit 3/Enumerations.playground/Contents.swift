enum CompassPoint{
    case north, east, south, west
}
var directionName=CompassPoint.north
print(directionName)
var directionName1:CompassPoint = .east
print(directionName1)
switch directionName1{
case .north:
    print("I am heading north")
case .east:
    print("I am heading east")
case .south:
    print("I am heading south")
case .west:
    print("I am heading west")
}

if directionName1 == .east{
    print("I am heading east")
}

enum Genre{
    case animated,thriller,horror,romance
}
struct Movie{
    var name:String
    var releaseYear: Int?
    var genre: Genre
}
let movie=Movie(name: "Finding Dory", releaseYear: 2016, genre: .animated)
print(movie)
