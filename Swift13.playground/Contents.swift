//: Playground - noun: a place where people can play

import Cocoa

// CLOSURES
// CLOSURE SYNTAX
// Starting with an array

var volunteerCounts = [1, 3, 40, 32, 2, 53, 77, 13]

volunteerCounts.sort(by: >)

// Sorting the array
//func sortAscending(_ i: Int, _ j: Int) -> Bool {
//    return i < j
//}
//let volunteersSorted = volunteerCounts.sorted(by: sortAscending)

// CLOSURE EXPRESSION SYNTAX
// Refactoring your sorting code
//let volunteersSorted = volunteerCounts.sorted(by: {
//    (i: Int, j: Int) -> Bool in
//    return i < j
//})

// Taking advantage of type inference
//let volunteersSorted = volunteerCounts.sorted(by: { i, j in i < j})

// Using shorthand syntax for arguments
//let volunteersSorted = volunteerCounts.sorted(by: { $0 < $1})

// Inline closre as function's final argument
let volunteersSorted = volunteerCounts.sorted { $0 < $1 }


// FUNCTIONS AS RETURN TYPES
// Return to Knowhere

//func makeTownGrand() -> (Int, Int) -> Int {
//    func buildRoads(byAddingLights lights: Int, toExistingLights existingLights: Int) -> Int {
//        return lights + existingLights
//    }
//    return buildRoads
//}

// The roads to Knowhere
//var stoplights = 4
//
//let townPlanByAddingLightsToExistingLIghts = makeTownGrand()
//stoplights = townPlanByAddingLightsToExistingLIghts(4, stoplights)
//print("Knowhere has \(stoplights) stoplights")


// FUNCTIONS AS ARGUMENTS
// Adding budget considerations
func makeTownGrand(withBudget budget: Int, condition: (Int) -> Bool) -> ((Int, Int) -> Int)? {
    if condition(budget) {
        func buildRoads(byAddingLights lights: Int, toExistingLights existingLights: Int) -> Int {
            return lights + existingLights
        }
        return buildRoads
    } else {
        return nil
    }
}

func evaluate(budget: Int) -> Bool {
    return budget > 10_000
}

var stoplights = 4

if let townPlanByAddingToExistingLights = makeTownGrand(withBudget: 11_000, condition: evaluate) {
    stoplights = townPlanByAddingToExistingLights(4, stoplights)
}
print("Knowhere has \(stoplights) stoplights")

// CLOSURES CAPTURE VALUES
// Tracking Growth
func makePopulationTracker(forInitialPopulation population: Int) -> (Int) -> Int {
    var totalPopulation = population
    func populationTracker(growth: Int) -> Int {
        totalPopulation += growth
        return totalPopulation
    }
    return populationTracker
}

var currentPopulation = 5_422
let growBy = makePopulationTracker(forInitialPopulation: currentPopulation)

// The population is booming
growBy(500)
currentPopulation
growBy(500)
growBy(500)
currentPopulation = growBy(500)

// CLOSURES ARE REFERNCE TYPS
// Duplicate growth
let anotherGrowBy = growBy
anotherGrowBy(500)


// Another population to track 
var bigCityPopulation = 4_061_981
let bigCityGrowBy = makePopulationTracker(forInitialPopulation: bigCityPopulation)
bigCityPopulation = bigCityGrowBy(10_000)
currentPopulation

// FUNCTIONAL PROGRAMMING
// HIGHER ORDER FUNCTIONS
// MAP(_:)

// Setting population by precinct
let precintPopulations = [1244, 2021, 2157]

// Using map(_:) to estimate population 
let projectedPopulations = precintPopulations.map {
    (population: Int) -> Int in
    return population * 2
}
projectedPopulations

// FILTER(_:) 
// Filtering an array
let bigProjections = projectedPopulations.filter {
    (projection: Int) -> Bool in
    return projection > 4000
}
bigProjections

// REDUCE(_:_:)
// Reducting an array to a single value
let totalProjection = projectedPopulations.reduce(0, { $0 + $1 })
totalProjection


















