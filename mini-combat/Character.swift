//
//  Character.swift
//  mini-combat
//
//  Created by Clare Hallock on 3/30/16.
//  Copyright © 2016 Clare Hallock. All rights reserved.
//

import Foundation

class Character {
    private var _hitPoints: Int
    private var _attackPower: Int
    private var _name: String
    private var _combatStatus: String

    var hitPoints: Int {
        get {
            return _hitPoints
        }

    }
    
    var attackPower: Int {
        get {
            return _attackPower
        }
    }
    
    var name: String {
        get {
            return _name
        }
    }
    
    var combatStatus: String {
        get {
            return _combatStatus
        }
    }
    
    init(startingHP: Int, startingPower: Int, name: String) {
        self._hitPoints = startingHP
        self._attackPower = startingPower
        self._name = name
        self._combatStatus = ""
        
    }
    
    func takeDamage(damageTaken: Int) {
        self._hitPoints = self._hitPoints - damageTaken
    }
    
    func tryAttack(target: Character, attackStrength: Int, hitRoll: Int) {
        if self.hitPoints > 0 {
            if target.hitPoints > 0 {
                if hitRoll > target.attackPower {
                    target.takeDamage(attackStrength)
                    _combatStatus = "\(target.name) takes \(attackStrength) damage! (\(target.hitPoints) remain)"
                } else {
                    _combatStatus = "\(self.name) has missed!"
                }
            } else {
                _combatStatus = "\(target.name) is dead. :("
            }
        } else {
                self._combatStatus = "\(self.name) is dead and can't attack!"
            }
    }
}