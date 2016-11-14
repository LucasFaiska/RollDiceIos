//
//  DiceTableViewController.swift
//  RollDice
//
//  Created by ilegra on 11/9/16.
//  Copyright © 2016 ilegra. All rights reserved.
//

import UIKit

class DiceTableViewController: UITableViewController {
    
    // MARK: Properties
    var dices = [Dice]()
    
    func loadDices() {
        let d2 = Dice(name: "D2", quantity: 0, dice_weight: 2, total: 0)
        let d4 = Dice(name: "D4", quantity: 0, dice_weight: 4, total: 0)
        let d6 = Dice(name: "D6", quantity: 0, dice_weight: 6, total: 0)
        let d8 = Dice(name: "D8", quantity: 0, dice_weight: 8, total: 0)
        let d10 = Dice(name: "D10", quantity: 0, dice_weight: 10, total: 0)
        let d12 = Dice(name: "D12", quantity: 0, dice_weight: 12, total: 0)
        let d20 = Dice(name: "D20", quantity: 0, dice_weight: 20, total: 0)
        
        dices = [d2, d4, d6, d8, d10, d12, d20]
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Load the sample data.
        loadDices()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    let cellIdentifier = "DiceTableViewCell"

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dices.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! DiceTableViewCell

        let dice = dices[indexPath.row]
        
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = UIColor.lightGray
        } else {
            cell.backgroundColor = UIColor.clear
        }

        cell.diceLabel.text = dice.name
        cell.diceLabel.textAlignment = .center
        cell.parcialResult.text = String(dice.total)
        cell.parcialResult.textAlignment = .center
        cell.cleanQuantity.addTarget(self, action: "clean", for: .touchUpInside)
        
        return cell
    }
 
    func clean(sender: UIButton){
        let test = 1
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
