//: Playground - noun: a place where people can play

import Cocoa

// CONDITIONALS

// IF/ELSE

// Big or Small?
var population: Int = 15422

var message: String
var hasPostOffice: Bool = true

//if population < 10000 {
//    message = "\(population) is a small town!"
//} else {
//    if population >= 10000 && population < 50000 {
//        message = "\(population) is a medium town!"
//    } else {
//      message = "\(population) is pretty big!"
//    }
//    
//}

// TERNARY OPERATOR
// Using the ternary operator
//message = population < 10000 ? "\(population) is a small town!" : "\(population) is a pretty big!"



// ELSE IF
// Using self if
if !hasPostOffice {
    print("Where do we buy stamps?")
}

if population < 10000 {
    message = "\(population) is a small town!"
} else if population >= 10000 && population < 50000 {
        message = "\(population) is a medium town!"
} else {
        message = "\(population) is pretty big!"
}
    

print(message)