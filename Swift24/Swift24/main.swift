//
//  main.swift
//  Swift24
//
//  Created by Erik Uecke on 4/14/17.
//  Copyright © 2017 Erik Uecke. All rights reserved.
//

import Foundation

// Creating an optional Peron
var bob: Person? = Person(name: "Bob")
print("created \(bob)")

var laptop: Asset? = Asset(name: "Shiny Laptop", value: 1_500.0)
var hat: Asset? = Asset(name: "Cowboy Hat", value: 175.0)
var backpack: Asset? = Asset(name: "Blue Backpack", value: 45.0)

bob?.useNetWorthChangedHandler { netWorth in
    print("Bob's net worth is now \(netWorth)")
}
bob?.takeOwnerShip(of: laptop!)
bob?.takeOwnerShip(of: hat!)


print("While Bob is alive, hat's owner is \(hat!.owner)")
bob = nil
print("the bob variable is now \(bob)")
print("After Bob is deallocated, hat's owner is \(hat!.owner)")

laptop = nil
hat = nil
backpack = nil



