//
//  Player.swift
//  RPG
//
//  Created by Brad Gray on 10/7/15.
//  Copyright © 2015 Brad Gray. All rights reserved.
//

import Foundation

class Character {
    private var _hp: Int = 100
    private var _attackPwr: Int = 10
    
    var hp: Int {
        get {
            return _hp
        }
    }
    
    var attackPwr: Int {
        get {
            return _attackPwr
                
            }
        }
    
    var isAlive: Bool {
        if  hp <= 0 {
            return false
            
        } else {
            return true
        }
        
    }
    
    init(startingHp: Int, _hp: Int, attackPwr: Int) {
    self._hp = startingHp
    self._attackPwr = attackPwr
        
        
    }
    func attemptAttack(attackPwr: Int) -> Bool {
        self._hp -= attackPwr
        return true
    }
    
    
}