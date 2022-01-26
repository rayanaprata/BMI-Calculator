//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by C94280a on 26/01/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmiValue: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmi = weight / pow(height, 2)
        
        if bmi < 18.5 {
            bmiValue = BMI(value: bmi,
                           advice: "Eat more pies.",
                           color: UIColor(red: 0.43, green: 0.76, blue: 0.97, alpha: 1.00)
            )
        } else if bmi < 24.9 {
            bmiValue = BMI(value: bmi,
                           advice: "Fit as a fiddle!",
                           color: UIColor(red: 0.70, green: 0.97, blue: 0.63, alpha: 1.00)
            )
        } else {
            bmiValue = BMI(value: bmi,
                           advice: "Eat less pies.",
                           color: UIColor(red: 0.88, green: 0.32, blue: 0.27, alpha: 1.00)
            )
        }
        
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmiValue?.value ?? "0.0")
    }
    
    func getAdvice() -> String {
        return bmiValue?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmiValue?.color ?? .white
    }
    
}
