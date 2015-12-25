//
//  Player.swift
//  Knight-Game
//
//  Created by Anjam Nabil Islam on 12/20/15.
//  Copyright © 2015 Anjam. All rights reserved.
//

import Foundation

class Player: Character {
    private var _name:String = "Player"
    private var _inventory = [String]()
    
    var name:String {
        return _name
    }
    
    var inventory:[String] {
        return _inventory
    }
    
    convenience init(name:String, hp: Int, AttackPwr: Int) {
        self.init(hp:hp, AttackPwr:AttackPwr)
        self._name = name
    }
    
    func CollectLoot(item:String) {
        self._inventory.append(item)
    }
}