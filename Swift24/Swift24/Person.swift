//
//  Person.swift
//  Swift24
//
//  Created by Erik Uecke on 4/14/17.
//  Copyright © 2017 Erik Uecke. All rights reserved.
//

import Foundation

// MEMORY MANAGEMENT AND ARC
// STRONG REFERENCE CYCLES

// Defining the Person Class
class Person: CustomStringConvertible {
    let name: String
    let accountant = Accountant()
    var assets = [Asset]()
    
    var description: String {
        return "Person(\(name))"
    }
    
    init(name: String) {
        self.name = name
        
        accountant.netWorthChangedHandler = {
            [weak self] netWorth in
            
            self?.netWorthDidChange(to: netWorth)
            return
        }
    }
    
    deinit {
        print("\(self) is being deallocated")
    }
    
    func takeOwnerShip(of asset: Asset) {
        
        if asset.owner == nil {
            accountant.gained(asset) {
                asset.owner = self
                assets.append(asset)
                asset.assetIndex = assets.endIndex - 1
            }
        } else {
            print("Item is already owned by \(asset.owner?.name). Remove ownership before you reassign.")
        }
    }
    
    func removeOwnership(of asset: Asset) {
        accountant.lost(asset) {
            asset.owner = nil
            assets.remove(at: asset.assetIndex - 1)
        }
    }
    
    func netWorthDidChange(to netWorth: Double) {
        print("The net worth of \(self) is now \(netWorth)")
    }
    
    func useNetWorthChangedHandler(handler: @escaping (Double) -> Void) {
        accountant.netWorthChangedHandler = handler
    }
}



