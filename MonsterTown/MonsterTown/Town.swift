//
//  Town.swift
//  MonsterTown
//
//  Created by Erik Uecke on 4/3/17.
//  Copyright © 2017 Erik Uecke. All rights reserved.
//

import Foundation

struct Town {
    var population = 5422
    var numberOfStoplights = 4
    var isMonsterAttacking = false
    
    func printDescription() {
        print("Population: \(population), number of stoplights: \(numberOfStoplights)")
    }
    
    mutating func changPopulation(by amount: Int) {
        if isMonsterAttacking {
            population -= amount
        } else {
            population += amount
        }
    }
}
