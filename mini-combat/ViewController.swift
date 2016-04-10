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
    @IBOutlet weak var blackButton: UIButton!
    @IBOutlet weak var brownButton: UIButton!
    @IBOutlet weak var winnerLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Character(startingHP: 20, startingPower: 5, name: "Player")
        monster = Character(startingHP: 15, startingPower: 6, name: "Monster")
        winnerLabel.text = ""
        
    }
    
    @IBAction func onMonsterButtonPressed(sender: UIButton) {
        let d20 = Int(arc4random_uniform(19) + 1)
        let d6 = Int(arc4random_uniform(5) + 1)
        
        monster.tryAttack(player, attackStrength: d6, hitRoll: d20)
        blueLabelText.text = monster.combatStatus
        
        blackButton.enabled = false
        blackButtonTimer()
        isThereAWinner()
    }
    
    @IBAction func onPlayerButtonPressed(sender: UIButton) {
        let d20 = Int(arc4random_uniform(19) + 1)
        let d6 = Int(arc4random_uniform(5) + 1)
        
        player.tryAttack(monster, attackStrength: d6, hitRoll: d20)
        blueLabelText.text = player.combatStatus
        
        brownButton.enabled = false
        brownButtonTimer()
        isThereAWinner()
    }
    
    func blackButtonTimer() {
        NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: #selector(ViewController.enableBlackButton), userInfo: nil, repeats: false)
        
    }
    
    func brownButtonTimer() {
        NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: #selector(ViewController.enableBrownButton), userInfo: nil, repeats: false)
        
    }
    
    func enableBlackButton() {
        if blackButton.enabled == false {
            blackButton.enabled = true
        } else {
            print("blackbutton already enabled")
        }
    }
    
    func enableBrownButton() {
        if brownButton.enabled == false {
            brownButton.enabled = true
        } else {
            print("brownButton already enabled")
        }
    }
    
    func isThereAWinner() {
        if player.areYouAWinner == false && monster.areYouAWinner == false {
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