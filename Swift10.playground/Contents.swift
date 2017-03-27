//: Playground - noun: a place where people can play

import Cocoa

// DICTIONARIES
// POPULATIONG DICTIONARIES

// Creating a dictionary
var movieRatings = ["Donnie Darko": 4, "Chungking Express": 5, "Dark City": 4]

// ACCESSING AND MODIFYING A DICTIONARY 
// Using Count

print("I have rate \(movieRatings.count) movies")

// Reading a value from the dictionary
let darkoRating = movieRatings["Donnie Darko"]

// Modifying a value
movieRatings["Dark City"] = 5
movieRatings

// Updating a value
let oldRating: Int? = movieRatings.updateValue(5, forKey: "Donnie Darko")
if let lastRating = oldRating, let currentRating = movieRatings["Donnie Darko"] {
    print("Old rating: \(lastRating); current rating: \(currentRating)")
}

// ADDING AND REMOVING VALUES
// Adding a value
movieRatings["The Cabinet of Dr. Caligari"] = 5

// Removing a value
//movieRatings.removeValue(forKey: "Dark City")

movieRatings["Dark City"] = nil


// LOOPING
// Looping through your dictionary
for (key, value) in movieRatings {
    print("The move \(key) was rated \(value)")
}

// Just the keys please
for movie in movieRatings.keys {
    print("User has rated \(movie)")
}

// Immutable Dictionaries
// Creating an immutablke ditionary

let album = ["Diet Roast Beef": 268,
             "Dubba Dubbs Stubs His Toe": 467,
             "Smokey's Carpet Cleaning Service": 187,
             "Track 4": 221
]


// TRANSLATING A DICTIONARY TO AN ARRAY
// Sending keys to an array
let watchedMovies = Array(movieRatings.keys)

// SILVER CHALLENGE
let georgiaZips = ["bucktooth": [30306, 30307, 30308, 30309, 30310], "redneck": [30311, 30312, 30313, 30314, 30315], "hayseed": [30316, 30317, 30319, 30320, 30321]]

var allZips: [Int] = []

for (key, value) in georgiaZips {
    for zip in value {
        allZips.append(zip)
    }
}

print("Georgia has the folling zip codes: \(allZips)")








