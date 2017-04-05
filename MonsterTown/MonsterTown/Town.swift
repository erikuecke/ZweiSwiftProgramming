//
//  Town.swift
//  MonsterTown
//
//  Created by Erik Uecke on 4/3/17.
//  Copyright © 2017 Erik Uecke. All rights reserved.
//

import Foundation

struct Town {
    let region: String
    var population: Int {
        didSet(oldPopulation) {
            print("The populaiton has changed to \(population) from \(oldPopulation)")
        }
    }
    var numberOfStoplights: Int
    var isMonsterAttacking = false
    
    init?(region: String, population: Int, stoplights: Int, isMonsterAttacking: Bool) {
        guard population > 0 else {
            return nil
        }
        self.region = region
        self.population = population
        numberOfStoplights = stoplights
        self.isMonsterAttacking = isMonsterAttacking
    }
    
    init?(population: Int, stoplights: Int) {
        self.init(region: "N/A", population: population, stoplights: stoplights, isMonsterAttacking: false)
    }
    
    
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
        print("Population: \(population), number of stoplights: \(numberOfStoplights); region \(region)")
    }
    
    mutating func changPopulation(by amount: Int) {
        if isMonsterAttacking {
            population -= amount
        } else {
            population += amount
        }
    }
}
