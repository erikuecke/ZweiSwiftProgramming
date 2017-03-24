//: Playground - noun: a place where people can play

import Cocoa

// ARRAYS
// CREATING AN ARRAY

// Creating an Array
//var bucketList: Array<String>

// Changing the syntax
var bucketList = ["Climb Mt. Everest"]

// ACCESSING AND MODIFYING ARRAYS
// Hot air Balloon adventure
bucketList.append("Fly hot air balloon to Fiji")

// So many ambitions
//bucketList.append("Watch the Lord of the Rings trilogy in one day")
//bucketList.append("Go on a walkabout")
//bucketList.append("Scuba dive in the Great Blue Hole")
//bucketList.append("Find a triple rainbow")


// Using a looop to append items from one array to oanother
var newItems = [
    "Watch the Lord of the Rings trilogy in one day",
    "Go on a walkabout",
    "Scuba dive in the Great Blue Hole",
    "Find a triple rainbow"
]

//for item in newItems {
//    bucketList.append(item)
//}

// Refactoring with the addition and assignment operator
bucketList += newItems
bucketList

//// Removing an item from the array
bucketList.remove(at: 2)


// Counting items in the array
print(bucketList.count)

// Subscripting to find your top three items
print(bucketList[0...2])

// Subscripting to append new information
bucketList[2] += " in Australia"

// Replacing an array item
bucketList[0] = "Climb Mt. Kilimanjaro"

// Inserting a new ambition
bucketList.insert("Toboggan across Alaska", at: 2)
bucketList

// ARRAY EQUALITY
// Checking two arrays for equality
var myronsList = [
    "Climb Mt. Kilimanjaro",
    "Fly hot air balloon to Fiji",
    "Toboggan across Alaska",
    "Go on a walkabout in Australia",
    "Scuba dive in the Great Blue Hole",
    "Find a triple rainbow"
]

let equal = (bucketList == myronsList)

// IMMUTABLE ARRAYS
// An immutable array

let lunches = [
    "Cheeseburger",
    "Veggie Pizza",
    "Chicken Caesar Salad",
    "Black Bean Burrito",
    "Falafel Wrap"
]

if let vegCount = lunches.index(of: "Veggie Pizza") {
    let sameInBucket = bucketList[vegCount + 2]
    sameInBucket
}











