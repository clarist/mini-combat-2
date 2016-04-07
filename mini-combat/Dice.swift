//
//  Dice.swift
//  mini-combat
//
//  Created by Clare Hallock on 4/7/16.
//  Copyright © 2016 Clare Hallock. All rights reserved.
//

import Foundation

class Dice {

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
}