//: Playground - noun: a place where people can play

import Cocoa


// EXTENSIONS
// EXTENDING AN EXISTING TYPE
// Extablishing a type alias
typealias Velocity = Double

// Extendin Velocity to support mph and kph
extension Velocity {
    var kph: Velocity { return self * 1.60934 }
    var mph: Velocity { return self }
}

// Adding protocol conformance with an extension
protocol Vehicle {
    var topSpeed: Velocity { get }
    
    var hasFlatbed: Bool { get }
}

// Extending Your Own Type
struct Car {
    let make: String
    let model: String
    let year: Int
    let color: String
    let nickname: String
    let numberOfDoors: Int
    var gasLevel: Double {
        willSet {
            precondition(newValue <= 1.0 && newValue >= 0.0, "New value must be between 0 and 1.")
        }
    }
}

// USING EXTENSIONS TO ADD PROTOCOL CONFORMANCE
// Extending Car to conform to Vehicle
extension Car: Vehicle {
    var topSpeed: Velocity { return 180 }
    var hasFlatbed: Bool { return false }
    
}

// ADDING AN INITIALIZER WITH AN EXTENSION
// Extending Car with an initializer
extension Car {
    init(make: String, model: String, year: Int, numberOfDoors: Int ) {
        self.init(make: make,
                  model: model,
                  year: year,
                  color: "Black",
                  nickname: "N/A",
                  numberOfDoors: numberOfDoors,
                  gasLevel: 1.0)
    }
}

// An instance of car
var c = Car(make: "Ford", model: "Fusion", year: 2013, numberOfDoors: 2)

// NESTED TYPES AND EXTENSIONS
// Creating an extension with nested type
extension Car {
    enum Kind {
        case coupe, sedan
    }
    var kind: Kind {
        if numberOfDoors == 2 {
            return .coupe
        } else {
            return .sedan
        }
    }
}

c.kind

// EXTENSIONS WITH FUNCTIONS
// Using an extension to add functions
extension Car {
    mutating func emptyGas(by amount: Double) {
        precondition(amount <= 1 && amount > 0, "Amount to remove must be between 0 and 1.")
        if gasLevel >= amount {
            gasLevel -= amount
        } else {
            gasLevel = 0
        }
    }
    
    mutating func fillGase() {
        gasLevel = 1.0
    }
}

// Lowering and filling the gas tank
c.emptyGas(by: 0.3)
c.gasLevel
c.fillGase()
c.gasLevel

// BRONZE CHALLENGE
extension Int {
    var timesFive: Int { return self * 5 }
}
let multiplied = 5.timesFive







