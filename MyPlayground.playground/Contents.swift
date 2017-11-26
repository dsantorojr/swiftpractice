//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// DECLARE VARIABLES
/*
var myVariable = 42
myVariable = 50
let myConstant = 42

let implicitInt = 70
let implicitDouble = 70.0
let explicitDouble: Double = 80

let explicitFloat: Float = 4
*/

// PRINT SOME STUFF
/*
let label = "The width is "
let width = 94
let widthLabel = label + String(width)
// let widthLabel2 = label + width ! ERROR

// FUN WAYS TO PRINT
let apples = 3
let oranges = 10
let appleSummary = "I have \(apples) apples."
let orangeSummary = "I have sooooooo many oranges, there are \(oranges)!!"

let floatCalcLine = "I have \(explicitFloat * 2) little chickens."
let myWife = "Briana Rae"
let testGreeting = "\(myWife) is a Rhoda Hog."

let quotation = """
Hey, \(myWife) is the coolest wife cause she has
like \(apples) apples and \(explicitFloat*5) chickens.
"""
 */

// ARRAYS AND DICTIONARIES
/*
var shoppingList = ["bananas", "dates", "shake-o"]
shoppingList[0]

var occupations = [
    "Bri" : "Photographer",
    "Danny" : "Engineer",
    "Dad" : "TRUST MAN"
]
occupations["Danny"]
 */

// EMPTY STUFF
/*
let emptyArray = [String]()
let emptyDictionary = [String: Float]()
*/

// CONTROL FLOW
/*
let individualScores = [4, 3, 6, 7, 12]
var teamScore = 0
for score in individualScores {
    if score > 6 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)
*/

// OPTIONAL VALUES
/*
var optionalString: String? = "Hello"
print (optionalString == nil)

var optionalName: String? = nil // nil or something changes the greeting result
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
} else {
    greeting = "Hello, Bob!"
}
print(greeting)

let nickName: String? = "JoA" // nil or something changes the greeting results
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickName ?? fullName)"
print(informalGreeting)
 */

// SWITCHES
/*
let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}
 */

// FOR IN LOOPS
/*
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
var largestKind: String = ""
for (kind, numbers) in interestingNumbers { // this loops through the dictionary
    for number in numbers {
        if number > largest {
            largest = number
            largestKind = kind
        }
    }
}
print("The largest number is \(largest), which is \(largestKind)")
*/

// WHILE LOOPS
/*
var n = 2
while n < 100 {
    n *= 2
}
print(n)

var m = 2
repeat {
    m *= 2
} while m < 100
print(m)

// MORE FOR LOOPS
var total = 0
for i in 0..<4 {
    total += i
}
print(total)
 */

// FUNCTIONS
/*
func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greet(person: "Bob", day: "Tuesday")

func greet(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greet("John", on: "Wednesday")
 */

// TUPLES
/*
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    
    return (min, max, sum)
}
let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics.sum)
print(statistics.2)
 */

// NESTED FUNCTIONS
/*
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()
 */

// RETURN FUNCTION AS VALUE
/*
func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)
 */

// FUNCATION AS INPUT ARGUMENT
/*
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12]
hasAnyMatches(list: numbers, condition: lessThanTen)
 */

// CLOSURES
/*
numbers.map({ (number: Int) -> Int in
    if number % 2 == 1 {
        return 0
    } else{
        return 3*number
    }}
)

let mappedNumbers = numbers.map({ number in 3 * number })
print(mappedNumbers)

let sortedNumbers = numbers.sorted { $0 > $1 }
print(sortedNumbers)
 */

// CLASSES
/*
class NamedShape {
    var numberOfSides = 0
    var name: String
    let classConst = 42
    
    init(name : String) {
        self.name = name
    }
    func simpleDescription() -> String {
        return "A \(name) has \(numberOfSides) sides."
    }
    
    func setNumSides (numberOfSides : Int) {
        self.numberOfSides = numberOfSides
    }
}

var shape = NamedShape(name: "Poop")
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription()

// SUBCLASS
class Square: NamedShape {
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}
let test = Square(sideLength: 5.2, name: "my test square")
test.area()
test.simpleDescription()

class Circle: NamedShape {
    var radius: Double
    
    init(radius: Double, name: String) {
        self.radius = radius
        super.init(name: name)
        numberOfSides = 1
    }
    
    func area() -> Double {
        return 3.14159 * radius * radius
    }
    
    override func simpleDescription() -> String {
        return "A circle with area \(area())."
    }
}

let testCirc = Circle(radius: 3.3, name: "Test Circle")
testCirc.area()
testCirc.simpleDescription()

// SUBCLASS AND WILL SET
class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }
    
    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)."
    }
}

class TriangleAndSquare {
    var triangle: EquilateralTriangle {
        willSet {
            square.sideLength = newValue.sideLength
        }
    }
    var square: Square {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
    init(size: Double, name: String) {
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
}
var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")
print(triangleAndSquare.square.sideLength)
print(triangleAndSquare.triangle.sideLength)
triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
print(triangleAndSquare.triangle.sideLength)

// OPTION?
let optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")
let sideLength = optionalSquare?.sideLength
 */

// ENUMERATIONS AND STRUCTURES
/*
enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}
let ace = Rank.ace
let aceRawValue = ace.rawValue

func isGreater(R1 : Rank, R2 : Rank) -> Bool {
    if R1.rawValue > R2.rawValue {
        return true
    } else {
        return false
    }
}

let king = Rank.king
isGreater(R1: ace, R2: king)

if let convertedRank = Rank(rawValue: 3) {
    let threeDescription = convertedRank.simpleDescription()
    print(threeDescription)
}

enum Suit {
    case spades, hearts, diamonds, clubs
    func simpleDescription() -> String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }
    func color() -> String {
        switch self {
        case .spades, .clubs :
            return "black"
        case .hearts, .diamonds :
            return "red"
        }
    }
}
let hearts = Suit.hearts
let heartsDescription = hearts.simpleDescription()
let heartsColor = hearts.color()


enum ServerResponse {
    case result(String, String)
    case failure(String)
}

let success = ServerResponse.result("6:00 am", "8:09 pm")
let failure = ServerResponse.failure("Out of cheese.")

switch failure {
case let .result(sunrise, sunset):
    print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
case let .failure(message):
    print("Failure...  \(message)")
}

struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}
let threeOfSpades = Card(rank: .three, suit: .spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()
 */

// PROTOCOL
protocol ExampleProtocol {
    var simpleDescription: String { get }
    mutating func adjust()
}

class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69105
    func adjust() {
        simpleDescription += "  Now 100% adjusted."
    }
}
var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription

struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A simple structure"
    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
}
var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription

