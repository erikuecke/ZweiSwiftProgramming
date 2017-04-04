//
//  Town.swift
//  MonsterTown
//
//  Created by Erik Uecke on 4/3/17.
//  Copyright © 2017 Erik Uecke. All rights reserved.
//

import Foundation

struct Town {
    static let region = "South"
    var population = 5422 {
        didSet(oldPopulation) {
            print("The populaiton has changed to \(population) from \(oldPopulation)")
        }
    }
    var numberOfStoplights = 4
    var isMonsterAttacking = false
    
    enum Size {
        case small
        case medium
        case large
    }
    
    var townSize: Size {
        get {
            switch self.population {
            case 0...10_000:
                return Size.small
            case 10_001...100_000:
                return Size.medium
            default:
                return Size.large
            }
        }
    }
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
