//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var tip : Double = 0.0
    var people : Double = 2
    var total: String = "0.0"
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    
    
    @IBAction func tipChanged(_ sender: UIButton) {
        billTextField.endEditing(true)
        
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        sender.isSelected = true
        
        let buttonTitle = sender.currentTitle!
        let buttonTitleWithoutPercent = String(buttonTitle.dropLast())
        let buttonNumber = Double (buttonTitleWithoutPercent)!
        
        tip = buttonNumber / 100
        
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(format: "%.0f", sender.value )
        
        people = (sender.value)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let bill = Double(billTextField.text!) ?? 0.0
        let totalBillAmount = (bill + (bill * tip)) / (people)
         total = String(format: "%.2f", totalBillAmount)
        
        
        
        performSegue(withIdentifier: "goToResult", sender: self)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
         if segue.identifier == "goToResult" {
             let destinationVC = segue.destination as! ResultViewController
                 destinationVC.resultValue = total
             destinationVC.peopleValue = Int(people)
             destinationVC.tipValue = Int(tip * 100)
             
         }
    }
}
