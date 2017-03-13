//: Playground - noun: a place where people can play

import Cocoa

// LOOPS

// FOR-IN LOOPS
// A for-in loop

var myFirstInt: Int = 0

for _ in 1...5 {
    myFirstInt += 1
    myFirstInt
    print(myFirstInt)
}


// WHERE
// A for-in loop with a where clause

for i in 1...100 where i % 3 == 0 {
    print(i)
}

// WHILE LOOPS

// A while loop
var i = 1
while i < 6 {
    myFirstInt += 1
    print(myFirstInt)
    i += 1
}

// CONTROL TRANSFER STATEMENTS, REDUX
// Using Continue
//
//var shields = 5
//var blastersOverHeating = false
//var blasterFireCount = 0
//var spaceDemonsDestroyed = 0
//
//while shields > 0 {
//    
//    if spaceDemonsDestroyed == 500 {
//        print("You beat the game")
//        break
//    }
//    
//    if blastersOverHeating {
//        print("Blasters are overheated! Cooldown initiated")
//        sleep(5)
//        print("Blasters ready to fire")
//        sleep(1)
//        blastersOverHeating = false
//        blasterFireCount = 0
//    }
//    
//    if blasterFireCount > 100 {
//        blastersOverHeating = true
//        continue
//    }
//    
//    // Fire blasters!
//    print("Fire blasters!")
//    
//    blasterFireCount += 1
//    spaceDemonsDestroyed += 1
//    
//}

// SILVER CHALLENGE - FIZZ BUZZ
var loopTuple = (f: false, b: false)

for i in 1...100 {
    loopTuple = (f: i % 3 == 0, b: i % 5 == 0)
    switch loopTuple {
    case (f: true, b: true):
        print("FIZZ BUZZ")
    case (f: true, b: false):
        print("FIZZ")
    case (f: false, b: true):
        print("BUZZ")
    default:
        print(i)
    }
}












