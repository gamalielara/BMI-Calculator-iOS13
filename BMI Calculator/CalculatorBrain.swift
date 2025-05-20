//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Ara Gamaliel on 5/20/25.
//  Copyright © 2025 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue =  weight / pow(height, 2)
        
        var advice: String
        var color: UIColor
        
        if bmiValue < 18.5 {
            advice = "Eat more pies"
            color = #colorLiteral(red: 0, green: 0.3796107471, blue: 0.573997438, alpha: 1)
        } else if bmiValue < 24.9 {
            advice = "Normal Weight"
            color = #colorLiteral(red: 0.13804546, green: 0.6991288066, blue: 0.314414382, alpha: 1)
        } else {
            advice = "Overweight"
            color = #colorLiteral(red: 0.4914598465, green: 0.0862743631, blue: 0.09520117193, alpha: 1)
        }
        
        self.bmi = BMI(value: bmiValue, advice: advice, color: color)
        
    }
    
    func getBMIValue() -> Float {
        return self.bmi?.value ?? 0.0
    }
}
