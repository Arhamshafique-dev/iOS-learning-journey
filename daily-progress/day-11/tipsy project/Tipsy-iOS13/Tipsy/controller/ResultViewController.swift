//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Arham  on 28/10/2025.
//  Copyright © 2025 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingLabel: UILabel!
   
    var resultValue : String?
    var peopleValue : Int?
    var tipValue : Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = resultValue
        settingLabel.text = "Split Between \(peopleValue ?? 0) people, with \(     tipValue ?? 0)% tip"
            }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true , completion: nil)
    }
    
}
