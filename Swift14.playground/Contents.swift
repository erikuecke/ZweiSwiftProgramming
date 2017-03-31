//: Playground - noun: a place where people can play

import Cocoa

// ENUMERATIONS
// BASIC ENUMERATIONS
// Defining an enumeration
//enum TextAlgnment {
//    case left
//    case right
//    case center
//    case justify
//}

// RAW VALUE ENUMERATIONS 
//// Using raw values
//enum TextAlignment: Int {
//    case left
//    case right
//    case center
//    case justify
//}

enum TextAlignment: Int {
    case left = 20
    case right = 30
    case center = 40
    case justify = 50
}

// Creating an instance of TExtAlignment
var alignment = TextAlignment.justify

// Confirming the raw values
print("Left has raw value \(TextAlignment.left.rawValue)")
print("Right has raw value \(TextAlignment.right.rawValue)")
print("Center has raw value \(TextAlignment.center.rawValue)")
print("Justify has raw value \(TextAlignment.justify.rawValue)")
print("The alignment has raw value \(alignment.rawValue)")





// Inferring the enum type
//alignment = .right

// Type iference when comparing values
//if alignment == .right {
//print("We should right-align the text!")
//}

// Switching to switch
switch alignment {
case .left:
    print("left aligned")
case .right:
    print("right alignmed")
case .center:
    print("center aligned")
case .justify:
    print("justified")
}

// Converting raw values to enum types
// Create a raw value
let myRawValue = 100

// Try to convert the raw value into a TextAlignment
if let myAlignment = TextAlignment(rawValue: myRawValue) {
    // Conversion succeeded
    print("successfully converted \(myRawValue) into a TextAlignment")
} else {
    // Conversion failed 
    print("\(myRawValue) has no corresponding TextAlignment case")
}

// Creating an enum with strings
enum ProgrammingLanguage: String {
    case swift
    case objectiveC = "objective-c"
    case c
    case cpp = "c++"
    case java
}

let myFavoriteLanguage = ProgrammingLanguage.swift
print("My favorite programming lagunage is \(myFavoriteLanguage.rawValue)")

// METHODS
// Lightbubls can be on or off
enum Lightbulb {
    case on
    case off
    
    // Establishing temperature behaviors
    func surfaceTemperature(forAmbientTemperature ambient: Double) -> Double {
        switch self {
        case .on:
            return ambient + 150.0
        case .off:
            return ambient
        }
    }
    
    // Tryin to toggle 
    mutating func toggle() {
        switch self {
        case .on:
            self = .off
        case .off:
            self = .on
        }
    }
}

// Turning on the light
var bulb = Lightbulb.on
let ambientTemperature = 77.0

var bulbTemperature = bulb.surfaceTemperature(forAmbientTemperature: ambientTemperature)
print("the bubl's temperature is \(bulbTemperature)")

// Turning off the light 
bulb.toggle()
bulbTemperature = bulb.surfaceTemperature(forAmbientTemperature: ambientTemperature)
print("the bulb's temperature is \(bulbTemperature)")

// ASSOCIATED VALUES
// Setting up ShapeDimensions
enum ShapeDimensions {
    // point has no associated value - it is dimensionless
    case point
    
    // square's associated value is the length of one side
    case square(side: Double)
    
    // rectangle's associated value defines its width and height
    case rectangle(width: Double, height: Double)
    
    // right triangle 
    case rightTriangle(legA: Double, legB: Double)
    
    // Using associated values to compute area
    func area() -> Double {
        switch self {
        case .point:
            return 0
        case let .square(side: side):
            return side * side
        case let .rectangle(width: w, height: h):
            return w * h
        case let .rightTriangle(legA: a, legB: b):
            return (a * b) / 2
        }
    }
    
    // Perimeter Method
    func perimeter() -> Double {
        switch self {
        case .point:
            return 0
        case let .square(side: side):
            return 4 * side
        case let .rectangle(width: w, height: h):
            return 2 * w + 2 * h
        case let .rightTriangle(legA: a, legB: b):
            return a + b + sqrt(a * a + b * b)
        }
    }
}

// Creating shapes
var squareShape = ShapeDimensions.square(side: 10.0)
var rectShape = ShapeDimensions.rectangle(width: 5.0, height: 10.0)

// Computing Areas
print("square's area = \(squareShape.area())")
print("rectangle's area = \(rectShape.area())")

// What is the area of a point?
var pointShape = ShapeDimensions.point

print("point's area = \(pointShape.area())")


// RECURSIVE ENUMERATIONS
// A family tree
// An attempt at FamilyTree

enum FamilyTree {
    case noKnownParents
    indirect case oneKnownParent(name: String, ancestors: FamilyTree)
    indirect case twoKnownParents(fatherName: String, fastherAncestors: FamilyTree, motherName: String, motherAncestors: FamilyTree)
}

// Creating a FamilyTree
let fredAncestors = FamilyTree.twoKnownParents(fatherName: "Fred Sr.", fastherAncestors: .oneKnownParent(name: "Beth", ancestors: .noKnownParents), motherName: "Marsha", motherAncestors: .noKnownParents)















