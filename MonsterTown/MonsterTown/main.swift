//
//  main.swift
//  MonsterTown
//
//  Created by Erik Uecke on 4/3/17.
//  Copyright © 2017 Erik Uecke. All rights reserved.
//

import Foundation

var myTown = Town()
myTown.changPopulation(by: 500)



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
