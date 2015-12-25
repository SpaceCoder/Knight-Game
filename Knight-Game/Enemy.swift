//
//  Enemy.swift
//  Knight-Game
//
//  Created by Anjam Nabil Islam on 12/20/15.
//  Copyright © 2015 Anjam. All rights reserved.
//

import Foundation

class Enemy:Character {
    var loot:[String] {
        return ["dagger", "steak"]
    }
    
    var type: String {
        return "minion"
    }
    
    func DropLoot() -> String? {
        if !IsAlive {
            let rand = Int(arc4random_uniform(UInt32(loot.count)))
            return loot[rand]
        } else {
            return nil
        }
    }
    
}