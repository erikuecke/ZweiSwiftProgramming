//: Playground - noun: a place where people can play

import Cocoa

// SETS
// Creating a set

//var groceryBag = Set<String>()
//
//// Adding to a set
//groceryBag.insert("Apples")
//groceryBag.insert("Oranges")
//groceryBag.insert("Pineapple")
// Creatng a set, redux
//var groceryBag = Set(["Apples", "Oranges", "Pineapple"])
var groceryBag: Set = ["Apples", "Oranges", "Pineapple"]

// Looping throug ha set
for food in groceryBag {
    print(food)
}

// WORKING WITH BANANAS
// Has bananas?
let hasBananas = groceryBag.contains("Bananas")

// UNIONS
// Combining Sets
let friendsGroceryBag = Set(["Bananas", "Cereal", "Milk", "Oranges"])
groceryBag.formUnion(friendsGroceryBag)

// INTERSECTIONS
// Intersecting sets
let roommatesGroceryBag = Set(["Apples", "Bananas", "Cereal", "Toothpaste"])
groceryBag.formIntersection(roommatesGroceryBag)

// DISJOINT
// Detecting intersections in sets
let yourSecondBag = Set(["Berries", "Yogurt"])
let roommatesSecondBag = Set(["Grapes", "Honey"])
let disjoint = yourSecondBag.isDisjoint(with: roommatesSecondBag)

// BRONZE CHALLENGE
let myCities = Set(["Atlanta", "Chicago", "Jacksonvile", "New York", "San Francisco"])
let yourCities = Set(["Chicago", "San Fransisco", "Jascsonville"])

myCities.isSuperset(of: yourCities)


