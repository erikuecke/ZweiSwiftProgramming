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
    var walksWithLimp = true
    private(set) var isFallingApart = false
    var zombieTerrorPower = 10
    
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
