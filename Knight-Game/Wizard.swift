//
//  Wizard.swift
//  Knight-Game
//
//  Created by Anjam Nabil Islam on 12/25/15.
//  Copyright © 2015 Anjam. All rights reserved.
//

import Foundation

class Wizard: Enemy {
    override var type: String {
        return "wizard"
    }
    
    override var loot: [String] {
        return ["Magic Wand","Corn Dogs"]
    }
}