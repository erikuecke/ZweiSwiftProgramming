//
//  main.swift
//  MonsterTown
//
//  Created by Erik Uecke on 4/3/17.
//  Copyright © 2017 Erik Uecke. All rights reserved.
//

import Foundation

var myTown = Town(population: 0, stoplights: 6)
myTown?.printDescription()
let myTownSize = myTown?.townSize
print(myTownSize ?? 0)
myTown?.changPopulation(by: 1_000_000)
print("\(myTown?.townSize): population: \(myTown?.population)")



var fredTheZombie: Zombie? = Zombie(limp: false, fallingApart: false, town: myTown, monsterName: "Fred")
fredTheZombie?.name = "DeadZombie"
fredTheZombie?.zombieTerrorPower = 50
fredTheZombie?.terrorizeTown()
fredTheZombie?.town?.printDescription()

var convenientZombie = Zombie(limp: true, fallingApart: false)

print("Victim pool: \(fredTheZombie?.victimPool)")
fredTheZombie?.victimPool = 500
print("Vicitm pool: \(fredTheZombie?.victimPool)")
print(Zombie.spookyNoise)
if Zombie.isTerrifying {
    print("Run away!")
}
fredTheZombie = nil
