//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by C94280a on 25/01/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var labelResult: UILabel!
    @IBOutlet weak var labelAdvice: UILabel!
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelResult.text = bmiValue
        labelAdvice.text = advice
        view.backgroundColor = color
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
