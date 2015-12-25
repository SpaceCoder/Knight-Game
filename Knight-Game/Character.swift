//
//  Character.swift
//  Knight-Game
//
//  Created by Anjam Nabil Islam on 12/20/15.
//  Copyright © 2015 Anjam. All rights reserved.
//

import Foundation

class Character {
    private var _hp = 100
    private var _AttackPwr = 15
    
    var hp:Int {
        get {
            return _hp
        }
    }
    
    var AttackPwr:Int {
        get {
            return _AttackPwr
        }
    }
    
    var IsAlive:Bool {
        if _hp <= 0 {
            return false
        } else {
            return true
        }
    }
    
    init(hp:Int, AttackPwr:Int) {
        self._hp = hp
        self._AttackPwr = AttackPwr
    }
    
    func RecievingAttack(AttackPwr:Int) -> Bool {
        self._hp -= AttackPwr
        
        return true
    }
}