//
//  Player.swift
//  RPG
//
//  Created by Brad Gray on 10/12/15.
//  Copyright © 2015 Brad Gray. All rights reserved.
//

import Foundation
class Player: Character {
    private var _name = "Player"
    
    var name: String {
        get {
            return _name
        }
        
    }
    
    private var _inventory = [String]()
    
    var inventory: [String] {
        get {
            return _inventory
        }
    }
    func addToInventory(item: String) {
        _inventory.append(item)
    }
    convenience init(name: String, hp: Int, attackPwr: Int) {
        self.init(startingHp: hp, attackPwr: attackPwr)
        _name = name
    }
    
}