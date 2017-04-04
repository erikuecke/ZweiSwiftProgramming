//
//  main.swift
//  MonsterTown
//
//  Created by Erik Uecke on 4/3/17.
//  Copyright © 2017 Erik Uecke. All rights reserved.
//

import Foundation

var myTown = Town()
let myTownSize = myTown.townSize
print(myTownSize)
myTown.changPopulation(by: 1_000_000)
print("\(myTown.townSize): population: \(myTown.population)")



let dracula = Vampire()
dracula.name = "Dracula"
dracula.town = myTown
dracula.terrorizeTown()
dracula.terrorizeTown()
dracula.terrorizeTown()
dracula.town?.printDescription()


let fredTheZombie = Zombie()
fredTheZombie.town = myTown
fredTheZombie.name = "DeadZombie"
fredTheZombie.zombieTerrorPower = 50
fredTheZombie.terrorizeTown()
fredTheZombie.town?.printDescription()

print("Victim pool: \(fredTheZombie.victimPool)")
fredTheZombie.victimPool = 500
print("Vicitm pool: \(fredTheZombie.victimPool)")
print(Zombie.spookyNoise)
if Zombie.isTerrifying {
    print("Run away!")
}
