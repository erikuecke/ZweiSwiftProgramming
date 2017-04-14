//
//  Asset.swift
//  Swift24
//
//  Created by Erik Uecke on 4/14/17.
//  Copyright © 2017 Erik Uecke. All rights reserved.
//

import Foundation

// Defining Asset Class
class Asset: CustomStringConvertible {
    let name: String
    let value: Double
    weak var owner: Person?
    var assetIndex: Int
    
    var description: String {
        if let actualOwner = owner {
            return "Asset(\(name), worth \(value) , owned by \(actualOwner))"
        } else {
            return "Asset(\(name), worth \(value), not owned by anyone)"
        }
    }
    
    init(name: String, value: Double) {
        self.name = name
        self.value = value
        self.assetIndex = 0
    }
    
    deinit {
        print("\(self) is being deallocated")
    }
}
