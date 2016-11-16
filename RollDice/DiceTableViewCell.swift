//
//  DiceTableViewCell.swift
//  RollDice
//
//  Created by ilegra on 11/9/16.
//  Copyright © 2016 ilegra. All rights reserved.
//

import UIKit

class DiceTableViewCell: UITableViewCell, UITextFieldDelegate {
    
    // MARK: Properties
    @IBOutlet weak var diceLabel: UILabel!
    @IBOutlet weak var diceQuantity: UITextField!
    @IBOutlet weak var cleanQuantity: UIButton!
    @IBOutlet weak var parcialResult: UILabel!
    
    var dataSource: Dice!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        diceQuantity.delegate = self
        diceQuantity.keyboardType = .numberPad
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func cleanQuantityClick(_ sender: UIButton) {
        self.diceQuantity.text = ""
        self.dataSource.quantity = 0
        self.roll()
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        let invalidCharacters = CharacterSet(charactersIn: "0123456789").inverted
        
        if(string.rangeOfCharacter(from: invalidCharacters, options: [], range: string.startIndex ..< string.endIndex) == nil){
            
            if(!string.isEmpty){
                self.dataSource.quantity = Int(string)!
            } else {
                self.dataSource.quantity = 0
            }
            
            return true
        } else {
            return false
        }
    }
    
    func setDataSource(d: Dice){
        self.diceLabel.text = d.name
        self.parcialResult.text = String(d.total)
        self.dataSource = d
    }
    
    func roll(){
        self.dataSource.roll()
        self.parcialResult.text = String(self.dataSource.total)
    }

}
