//
//  Balrog.swift
//  RPG
//
//  Created by Brad Gray on 10/12/15.
//  Copyright © 2015 Brad Gray. All rights reserved.
//

import Foundation

class Balrog: Monster {
    var immunity = 20
    
    override var loot: [String] {
        
        return ["fiery sigil", "gandalfs sword", "heart of a balrog"]
    }
        
    override var monsterType: String {
        return "Balrog"
            
        }
    override func attemptAttack(attackPwr: Int) -> Bool {
        if attackPwr >= immunity {
            return super.attemptAttack(attackPwr)
        } else {
            print("attack was unsuccesful")

            return false
                    }
    }
    
}