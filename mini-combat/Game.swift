//
//  Game.swift
//  mini-combat
//
//  Created by Clare Hallock on 4/2/16.
//  Copyright © 2016 Clare Hallock. All rights reserved.
//

import Foundation
import UIKit

class Game {

    private var _d20 = Int(arc4random_uniform(19) + 1)
    private var _d6 = Int(arc4random_uniform(5) + 1)

    var d20: Int {
        get {
            return _d20
        }
    }
    
    var d6: Int {
        get {
            return _d6
        }
    }

    func performAttack(attacker: Character, target: Character, button: UIButton) {
        attacker.tryAttack(target, attackStrength: attacker.attackPower, hitRoll: d20)
        button.enabled = false
    
    }
    
    func isThereAWinner(attacker: Character, target: Character) {
        if attacker.areYouAWinner == false && target.areYouAWinner == false {
            winnerLabel.text = ""
        } else if player.areYouAWinner == true {
            winnerLabel.text = "PLAYER WINS!"
        } else if monster.areYouAWinner == true {
            winnerLabel.text = "MONSTER WINS!"
        } else {
            winnerLabel.text = "you're all losers"
        }
    }
}


//
//player.tryAttack(monster, attackStrength: d6, hitRoll: d20)
//blueLabelText.text = player.combatStatus
//
//brownButton.enabled = false
//brownButtonTimer()
//isThereAWinner()