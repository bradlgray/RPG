//
//  Monster.swift
//  RPG
//
//  Created by Brad Gray on 10/12/15.
//  Copyright © 2015 Brad Gray. All rights reserved.
//

import Foundation
class Monster: Character {
    
    
    
    var loot: [String] {
        get {
           return ["rusty dagger", "garens longsword", "noobs axe"]
        }
    }
    var monsterType: String {
        
        get {
            return "grunt"
        }
        
    }
    
    func dropLoot() -> String? {
        if !isAlive {
            let rand = Int(arc4random_uniform(UInt32(loot.count)))
            
            return loot[rand]
        }
        return nil
    }
}