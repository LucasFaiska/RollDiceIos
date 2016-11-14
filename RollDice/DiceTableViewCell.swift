//
//  DiceTableViewCell.swift
//  RollDice
//
//  Created by ilegra on 11/9/16.
//  Copyright © 2016 ilegra. All rights reserved.
//

import UIKit

class DiceTableViewCell: UITableViewCell {
    
    // MARK: Properties
    @IBOutlet weak var diceLabel: UILabel!
    @IBOutlet weak var diceQuantity: UITextField!
    @IBOutlet weak var cleanQuantity: UIButton!
    @IBOutlet weak var parcialResult: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
