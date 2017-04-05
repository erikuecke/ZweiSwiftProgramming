//
//  Zombie.swift
//  MonsterTown
//
//  Created by Erik Uecke on 4/3/17.
//  Copyright © 2017 Erik Uecke. All rights reserved.
//

import Foundation

class Zombie: Monster {
    override class var spookyNoise: String {
        return "Brains..."
    }
    var walksWithLimp: Bool
    private(set) var isFallingApart: Bool
    var zombieTerrorPower = 10
    
    init?(limp: Bool, fallingApart: Bool, town: Town?, monsterName: String) {
        walksWithLimp = limp
        isFallingApart = fallingApart
        super.init(town: town, monsterName: monsterName)
    }
    
    convenience init?(limp: Bool, fallingApart: Bool) {
        self.init(limp: limp, fallingApart: fallingApart, town: nil, monsterName: "Fred")
        if walksWithLimp {
            print("This zombie has a bad knee")
        }
    }
    
    convenience override init?(town: Town?, monsterName: String) {
        self.init(limp: false, fallingApart: false, town: town, monsterName: monsterName)
        walksWithLimp = false
        isFallingApart = false
    }
    
    deinit {
        print("Zombie name\(name) is no longer with us.")
    }
    
    override func terrorizeTown() {
        if !isFallingApart {
            town?.isMonsterAttacking = true
            if let currentPop = town?.population {
                switch currentPop {
                case 0:
                    print("\(self.name) tried terrorizing but everyone's dead... no is left")
                case 1...zombieTerrorPower:
                    town?.population = 0
                    print("\(self.name) terrorized the now and now everyone is dead")
                default:
                    super.terrorizeTown()
                    town?.changPopulation(by: zombieTerrorPower)
                }
            }
        }
        super.terrorizeTown()
       
        
    }
}
