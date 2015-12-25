//
//  Chimera.swift
//  Knight-Game
//
//  Created by Anjam Nabil Islam on 12/24/15.
//  Copyright © 2015 Anjam. All rights reserved.
//

import Foundation

class Chimera: Enemy {
    var immunity: Int = 15
    
    override var type: String {
        return "chimera"
    }
    
    override var loot: [String] {
        return ["Claws","Cat Food"]
    }
    
    override func RecievingAttack(AttackPwr: Int) -> Bool {
        if AttackPwr >= immunity {
            return super.RecievingAttack(AttackPwr)
        } else {
            return false
        }
    }
}