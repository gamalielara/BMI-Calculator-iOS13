//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Ara Gamaliel on 5/20/25.
//  Copyright © 2025 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?
    var backgroundColor: UIColor?
    var adviceText: String?

    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet var viewBaseBackground: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = self.bmiValue
        adviceLabel.text = self.adviceText
        viewBaseBackground.backgroundColor = self.backgroundColor
        
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }

}
