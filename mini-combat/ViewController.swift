//
//  ViewController.swift
//  mini-combat
//
//  Created by Clare Hallock on 3/30/16.
//  Copyright © 2016 Clare Hallock. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var player: Character!
    var monster: Character!

    
    @IBOutlet weak var blueLabelText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Character(startingHP: 20, startingPower: 5, name: "Player")
        monster = Character(startingHP: 15, startingPower: 6, name: "Monster")

    }
    
    @IBAction func onMonsterButtonPressed(sender: UIButton) {
        if monster.hitPoints > 0 {
            let d20 = Int(arc4random_uniform(20))
            let d6 = Int(arc4random_uniform(6))
            
            monster.tryAttack(player, attackStrength: d6, hitRoll: d20)
            blueLabelText.text = monster.combatStatus
        } else {
            blueLabelText.text = monster.combatStatus
        }
    }
    
    @IBAction func onPlayerButtonPressed(sender: UIButton) {
        let d20 = Int(arc4random_uniform(20))
        let d6 = Int(arc4random_uniform(6))
        
        player.tryAttack(monster, attackStrength: d6, hitRoll: d20)
        blueLabelText.text = player.combatStatus
        }
            
//            let attackStrength = Int(arc4random_uniform(6))
//            let hitRoll = Int(arc4random_uniform(20))
//            
//            if hitRoll > monster.attackPower {
//                monster.takeDamage(attackStrength)
//                blueLabelText.text = "Monster takes \(attackStrength) damage! (\(monster.hitPoints) remain)"
//            } else {
//                blueLabelText.text = "Player has missed!"
//            }
//        } else {
//            blueLabelText.text = "Monster is dead. :("
//        }

    
//    func disableButton() {
//        NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: Selector("onPlayerButtonPressed"), userInfo: nil, repeats: false)
//        
//    }
//}

}

