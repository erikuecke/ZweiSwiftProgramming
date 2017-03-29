//: Playground - noun: a place where people can play

import Cocoa

// FUNCTIONS
// A BASIC FUNCTION
// Defining a function

func printGreeting() -> Void {
    print("Hello Playground.")
}
printGreeting()

// FUNCTION PARAMETERS
// Using a parameter

//func printPersonalGreeting(to name: String) {
//    print("Hello \(name) welcome to your playground")
//}
//printPersonalGreeting(to: "Matt")

// A function for division
//func divisionDescriptionFor(numerator: Double, denominator: Double) {
//    print("\(numerator) divided by \(denominator) equals \(numerator / denominator)")
//}
//divisionDescriptionFor(numerator: 9.0, denominator: 3.0)

// VARIADIC PARAMETERS
// Greeting a group

func printPersnoalGreetings(to names: String...) {
    for name in names {
        print("Hello \(name), welcome to the playground")
    }
}
printPersnoalGreetings(to: "Alex", "Chris", "Drew", "Pat")

// DEFAULT PARAMETER VALUES
// Adding a default parameter value
//func divisionDescriptionFor(numerator: Double, denominator: Double, withPunctuation punctuation: String = ".") {
//    print("\(numerator) divided by \(denominator) equals \(numerator / denominator)\(punctuation)")
//}
//divisionDescriptionFor(numerator: 9.0, denominator: 3.0)
//divisionDescriptionFor(numerator: 6.0, denominator: 2.0, withPunctuation: "!")

// IN-OUT PARAMETERS
// An in-out parameter
var error = "The request failed"
func appendErrorCode(_ code: Int, toErrorString errorString: inout String) {
    if code == 400 {
        errorString += " bad request."
    }
}
appendErrorCode(400, toErrorString: &error)
error

// RETURNING FROM A FUNCTION
func divisionDescriptionFor(numerator: Double, denominator: Double, withPunctuation punctuation: String = ".") -> String {
    return ("\(numerator) divided by \(denominator) equals \(numerator / denominator)\(punctuation)")
}
divisionDescriptionFor(numerator: 9.0, denominator: 3.0)
print(divisionDescriptionFor(numerator: 6.0, denominator: 2.0, withPunctuation: "!"))

// NESTED FUNCTIONS AND SCOPE
// Nested functions
func areaOfTriangleWiht(base: Double, height: Double) -> Double {
    let numerator = base * height
    func divide() -> Double {
        return numerator / 2
    }
    return divide()
}
areaOfTriangleWiht(base: 3.0, height: 5.0)

// MULTIPLE RETURNS
// Sorting evens and odds

func sortedEvenOddNumbers(_ numbers: [Int]) -> (evens: [Int], odds: [Int]) {
    var evens = [Int]()
    var odds = [Int]()
    for number in numbers {
        if number % 2 == 0 {
            evens.append(number)
        } else {
            odds.append(number)
        }
    }
    return (evens, odds)
}
    
    
// Calling sortedEvenOddNumbers(_:)
let aBunchOfNumbers = [10, 1, 4, 3, 57, 43, 84, 27, 156, 111]
let theSortedNumbers = sortedEvenOddNumbers(aBunchOfNumbers)
print("The even numbers are: \(theSortedNumbers.evens); the odd numbers are: \(theSortedNumbers.odds)")


// OPTIONAL RETURN TYPES
// Using an optional return 
func grabMiddleName(fromFullName name: (String, String?, String)) -> String? {
    return name.1
}
let middleName = grabMiddleName(fromFullName: ("Matt", nil, "Mathias"))
if let theName = middleName {
    print(theName)
}

// EXITING EARLIY FROM A FUNCTION
// Early exits with guard statements
func greetByMiddleName(fromFullName name: (first: String, middle: String?, last: String)) {
    
    guard let middleName = name.middle, middleName.characters.count < 4 else {
        print("Hey there!")
        return
    }
    print("Hey \(middleName)")
}

greetByMiddleName(fromFullName: ("Erik", "Bob", "Uecke"))

// SILVER CHALLENGE
func siftBeans(fromGroceryList list: [String]) -> (beans: [String], otherGroceries: [String]) {
    var beaners = [String]()
    var otherGrocer = [String]()
    for item in list {
        if item.hasSuffix("beans") {
            beaners.append(item)
        } else {
            otherGrocer.append(item)
        }
    }
    return (beans: beaners, otherGroceries: otherGrocer)
}
let result = siftBeans(fromGroceryList: ["green beans", "milk", "black beans", "pinto beans", "apples"])
result.beans == ["green beans", "black beans", "pinto beans"]
result.otherGroceries == ["milk", "apples"]







