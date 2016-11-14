//
//  Dice.swift
//  RollDice
//
//  Created by ilegra on 11/9/16.
//  Copyright © 2016 ilegra. All rights reserved.
//

import Foundation

class Dice {
    
    // MARK: Properties
    var name = " "
    var quantity = 0
    var dice_weight = 0
    var total = 0
    
    init(name: String, quantity: Int, dice_weight: Int, total: Int){
        self.name = name
        self.quantity = quantity
        self.dice_weight = dice_weight
        self.total = total
    }
    
    func roll() {
        var total = 0
        
        if(quantity > 0) {
            for _ in 0...quantity {
                total += Int(arc4random_uniform(UInt32(dice_weight))) + 1
            }
        }
    }
    
}
