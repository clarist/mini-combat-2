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


    private var _winnerStatus: String = ""



    var winnerStatus: String {
        get {
            return _winnerStatus
        }
    }
    
    func combatLoop(attacker: Character, target: Character, button: UIButton, dice: Dice) {
        attacker.tryAttack(target, attackStrength: attacker.attackPower, hitRoll: dice.d20)
        button.enabled = false
        if attacker.areYouAWinner == false && target.areYouAWinner == false {
            _winnerStatus = ""
        } else if attacker.areYouAWinner == true {
            _winnerStatus = "PLAYER WINS!"
        } else if target.areYouAWinner == true {
            _winnerStatus = "MONSTER WINS!"
        } else {
            _winnerStatus = "you're all losers"
        }
    }

}