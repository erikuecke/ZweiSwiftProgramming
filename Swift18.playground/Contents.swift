//: Playground - noun: a place where people can play

import Cocoa


// VALUE VS REFERENCE TYPS
// Value Semantics

var str = "Hello, playground"

// Making a new string
var playgroundGreeting = str

// Updating playgroundGreeting
playgroundGreeting += "! How are you today?"

// REFERENCE SEMANTICS
// Adding a Greek god class
class GreekGod {
    var name: String
    init(name: String) {
        self.name = name
    }
}

// making a greek god
let hecate = GreekGod(name: "Hecate")

// Getting a referecent to a Greek god
let anotherHecate = hecate

// Chagning a Greek god's name
anotherHecate.name = "AnotherHecate"
anotherHecate.name
hecate.name

// CONSTANT VALUE AND REFERENCE TYPES
// Making a Gree Pantheon
struct Pantheon {
    var chiefGod: GreekGod
}

// Hecate's Pantheon
let pantheon = Pantheon(chiefGod: hecate)

// A new chief god
let zeus = GreekGod(name: "Zeua")

// Changing zeus name
zeus.name = "Zeus Jr."
zeus.name

// USING VALUE AND REFERENCE TYPES TOGETHER
// The Romans are coming
pantheon.chiefGod.name // "AnotherHecate"
let greekPantheon = pantheon
hecate.name = "Trivia"
greekPantheon.chiefGod.name

// COPYING
// Adding some gods
let athena = GreekGod(name: "Athena")
let gods = [athena, hecate, zeus]

// Copying gods
let godsCopy = gods
gods.last?.name = "Jupiter"
gods
godsCopy
















