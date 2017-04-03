//
//  Vampire.swift
//  MonsterTown
//
//  Created by Erik Uecke on 4/3/17.
//  Copyright © 2017 Erik Uecke. All rights reserved.
//

import Foundation



class Vampire: Monster {
    
    var convertedVamps = [Vampire]()
    var vampireTerrorPower = 1
    
    final override func terrorizeTown() {
        town?.isMonsterAttacking = true
        if let currentPop = town?.population {
            switch currentPop {
            case 0:
                print("\(self.name) tried terrorizing but everyone's dead... no is left")
            case 1...vampireTerrorPower:
                town?.population = 0
                print("\(self.name) terrorized the now and now everyone is dead")
            default:
                super.terrorizeTown()
                town?.changPopulation(by: vampireTerrorPower)
                convertedVamps.append(Vampire())
                printVampireCount()
            }

            
        }
        town?.isMonsterAttacking = false
    }
    func printVampireCount() {
        print("There are \(convertedVamps.count) vampires in this town")
    }
}
