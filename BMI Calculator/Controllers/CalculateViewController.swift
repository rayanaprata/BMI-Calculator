//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var labelHeight: UILabel!
    @IBOutlet weak var labelWeight: UILabel!
    @IBOutlet weak var sliderHeight: UISlider!
    @IBOutlet weak var sliderWeight: UISlider!
    
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func pressedSliderHeight(_ sender: UISlider) {
        labelHeight.text = String(format: "%.2f", sender.value) + "m"
    }
    
    @IBAction func pressedSliderWeight(_ sender: UISlider) {
        labelWeight.text =
        String(format: "%.0f", sender.value) + "Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let weight = sliderWeight.value
        let height = sliderHeight.value
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
                  
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
    
}

