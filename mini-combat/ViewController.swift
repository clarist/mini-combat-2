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
            let d20 = Int(arc4random_uniform(20))
            let d6 = Int(arc4random_uniform(6))
            
            monster.tryAttack(player, attackStrength: d6, hitRoll: d20)
            blueLabelText.text = monster.combatStatus
        }
    
    @IBAction func onPlayerButtonPressed(sender: UIButton) {
            let d20 = Int(arc4random_uniform(20))
            let d6 = Int(arc4random_uniform(6))
            
            player.tryAttack(monster, attackStrength: d6, hitRoll: d20)
            blueLabelText.text = player.combatStatus
    }

//    func disableButton() {
//        NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: nil, userInfo: nil, repeats: false)
//    }


}

