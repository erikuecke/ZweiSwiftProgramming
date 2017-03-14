//: Playground - noun: a place where people can play

import Cocoa

// STRINGS

// WORKIING WITH STRINGS

// Hello, playground

let playground = "Hello, playground"

// Creating a mutable string
var mutablePlayground = "Hello, mutable playground"

// Adding to a mutable string
mutablePlayground += "!"

// mutablePlayouground's Character s

for c: Character in mutablePlayground.characters {
    print("'\(c)'")
}

// UNICODE
// UNICODE SCALARS

// Using a Unicode scalar
let oneCoolDude = "\u{1F60E}"

// Using a combining scalar
let aAcute = "\u{0061}\u{0301}"

// Revealing the Unicode scalars behind a string
for scalar in playground.unicodeScalars {
    print("\(scalar.value)")
}

// CANONICAL EQUIVALENCE

// Using a precomposed character
let aAcutePrecomposed = "\u{00E1}"

// Checking equivalence
let b = (aAcute == aAcutePrecomposed) // true

// COUNTING ELEMENTS
// Counting Characters

print("aAcute: \(aAcute.characters.count); aAcutePrecomposed: \(aAcutePrecomposed.characters.count)")

// Finding the fifth character
let start = playground.startIndex
let end = playground.index(start, offsetBy: 4)
let fifthCharacter = playground[end]

// Pull out a range
let range = start...end
let firstFive = playground[range] // Hello

let emptyStringer = ""
if emptyStringer.isEmpty {
    print("Emptystringer is empty")
}








