//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var tipAmount: Float = 0.0
    var splitNumber: Int = 1
    var billTotal: Float = 0.0
    
    

    @IBAction func billTotalChanged(_ sender: UITextField) {
        let enteredBillTotal = sender.text ?? "0.0"
        billTotal = Float(enteredBillTotal) ?? 0.0
    }
    
    
    @IBAction func tipChanged(_ sender: UIButton) {
        
        // logic to clear highlight of unselected buttons
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false

        // logic to set highlight of selected button
        let selectedButton = sender
        selectedButton.isSelected = true
        
        // logic to assign / print tipAmount value
        if tenPctButton == selectedButton {
            tipAmount = 0.10
        } else if twentyPctButton == selectedButton {
            tipAmount = 0.20
        } else {
            tipAmount = 0.0
        }
        
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        
        let selectedStepperValue = sender.value
        splitNumberLabel.text = String(format: "%.0f", selectedStepperValue)
        splitNumber = Int(selectedStepperValue)
        
    }
    
    @IBAction func calculatorPressed(_ sender: UIButton) {
    }


}

