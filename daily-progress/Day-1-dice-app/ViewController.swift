//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageview1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
   // we start learninng this project with have variable but we remove that because we now understand and minimize our code
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
      }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        // we make one variable which have array of containg all our dices and we use it for bith side dice and we chnage varible var sign to let to make it constant
        
        let diceArray = [ UIImage(named: "DiceOne"),
                           UIImage(named: "DiceTwo"),
                           UIImage(named: "DiceThree"),
                           UIImage(named: "DiceFour"),
                           UIImage(named: "DiceFive"),
                           UIImage(named: "DiceSix")
                           ]
        // we can randomise like that and also like we do its little explaning and beginner level(Int.random(in: 0...5))
         // but we do randomelement()! 
        
        diceImageview1.image = diceArray.randomElement()!
        diceImageView2.image = diceArray.randomElement()!
        
        
        
        
    }
    
}

