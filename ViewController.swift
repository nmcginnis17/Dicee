//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    var diceTotalValue: Int = 0
    
    
//    Array for dice images
    let diceArray = ["DiceOne", "DiceTwo", "DiceThree", "DiceFour", "DiceFive", "DiceSix"]

//    Dice image views
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var diceRollTotalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
    }
    
//    Update dice images when roll button is pressed
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
        updateTotalLabel()
    }
    
    func updateDiceImages() {
//        Generate random dice numbers
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
                
//        Assign dice number to image view
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
    func updateTotalLabel() {
        diceTotalValue = ((randomDiceIndex1 + 1) + (randomDiceIndex2 + 1))
        
        diceRollTotalLabel.text = "You rolled a \(diceTotalValue)"
    }


}

