//
//  Sauron.swift
//  RPG
//
//  Created by Brad Gray on 10/12/15.
//  Copyright © 2015 Brad Gray. All rights reserved.
//

import Foundation

class Sauron: Monster {
    
    override var loot: [String] {
        return ["Ring of Power", "Power Upgrade", "legendary mace"]
    }
    override var monsterType: String {
        return "Sauron"
    }
}