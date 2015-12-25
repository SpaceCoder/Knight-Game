//
//  ViewController.swift
//  Knight-Game
//
//  Created by Anjam Nabil Islam on 12/19/15.
//  Copyright © 2015 Anjam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Outlets
    @IBOutlet weak var PlayerHP: UILabel!
    @IBOutlet weak var EnemyHP: UILabel!
    @IBOutlet weak var PrintScreen: UILabel!
    @IBOutlet weak var EnemyImg: UIImageView!
    @IBOutlet weak var ChestImg: UIButton!
    
    //variables
    var player: Player!
    var enemy: Enemy!
    var loot: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player(name: "Space Coder", hp: 110, AttackPwr: 20)
        PlayerHP.text = "\(player.hp) HP"
        
        GenerateRandomEnemy()
    }

    @IBAction func AttackBtnPressed(sender: AnyObject) {
        if enemy!.IsAlive {
            if enemy!.RecievingAttack(player.AttackPwr) {
                UpdateEnemyHP()
                PrintScreen.text = "\(player.name) attacked \(enemy!.type)"
            } else {
                PrintScreen.text = "Attack has failed!"
            }
        } else {
            EnemyImg.hidden = true
            ChestImg.hidden = false
            PrintScreen.text = "\(player.name) has defeated \(enemy!.type)"
        }
    }

    @IBAction func ChestBtnPressed(sender: AnyObject) {
        loot = enemy.DropLoot()
        if let l = loot {
            player.CollectLoot(l)
            PrintScreen.text = "\(player.name) collected \(l)"
        }
        ChestImg.hidden = true
        
        NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: "GenerateRandomEnemy", userInfo: nil, repeats: false)
    }
    
    func GenerateRandomEnemy() {
        let rand = Int(arc4random_uniform(3))
        
        if rand == 0 {
            enemy = Chimera(hp: 200, AttackPwr: 15)
        } else if rand == 1 {
            enemy = Wizard(hp: 100, AttackPwr: 30)
        } else {
            enemy = Enemy(hp: 120, AttackPwr: 10)
        }
        
        EnemyImg.hidden = false
        
        UpdateEnemyHP()
        
        PrintScreen.text = "A wild \(enemy!.type) appears!"
    }
    
    func UpdateEnemyHP() {
        EnemyHP.text = "\(enemy!.hp) HP"
    }
}

