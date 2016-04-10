//
//  Dice.swift
//  two_button_battle
//
//  Created by Clare Hallock on 4/8/16.
//  Copyright © 2016 Clare Hallock. All rights reserved.
//

import Foundation

class Dice {
    private var _d100 = Int(arc4random_uniform(99) + 1)
    private var _d20 = Int(arc4random_uniform(19) + 1)
    private var _d12 = Int(arc4random_uniform(11) + 1)
    private var _d8 = Int(arc4random_uniform(7) + 1)
    private var _d6 = Int(arc4random_uniform(5) + 1)
    private var _d4 = Int(arc4random_uniform(3) + 1)
    
    var d100: Int {
        get {
            return _d100
        }
    }
    
    var d20: Int {
        get {
            return _d20
        }
    }
    
    var d12: Int {
        get {
            return _d12
        }
    }
    
    var d8: Int {
        get {
            return _d8
        }
    }
    
    var d6: Int {
        get {
            return _d6
        }
    }
    
    var d4: Int {
        get {
            return _d4
        }
    }
    
    func rollTheDice(qty: Int, value: Int) -> Int {
        return qty * value
    }
    
    init() {
        
    }
    
    
//    init(startingHp: Int, attackPwr: Int) {
//        self._hp = startingHp
//        self._attackPwr = attackPwr
//    }
}
















