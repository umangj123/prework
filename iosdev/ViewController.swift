//
//  ViewController.swift
//  iosdev
//
//  Created by Umang Jain on 9/6/21.
//  Copyright © 2021 Umang Jain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var billAmountTextField: UITextField!
    @IBOutlet var tipAmountLabel: UILabel!
    
    @IBOutlet var tipControl: UISegmentedControl!
    @IBOutlet var totalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

