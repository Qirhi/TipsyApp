//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Rhiannon Stanford on 5/15/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var billTotal: Float?
    var tipAmount: Float?
    var splitNumber: Int?
    


    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.totalLabel.text = String(format: "%.2f", self.billTotal!)
        let stringTipAmount = String(format: "%.0f", self.tipAmount!*100)
        let stringSplitNumber = String(self.splitNumber!)
        
        self.settingsLabel.text = "Split between \(stringSplitNumber) people, with \(stringTipAmount)% tip."

    }
    
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
 


}
