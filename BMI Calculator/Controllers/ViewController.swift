//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSliderValueChanged(_ sender: UISlider) {
        print(String(format:"%.2f", sender.value))
        heightLabel.text = "\(String(format:"%.2f", sender.value)) m"
        
    }
    @IBAction func weightSliderValueChanged(_ sender: UISlider) {
        print(String(format:"%.2f", sender.value))
        weightLabel.text = "\(String(format:"%.2f", sender.value)) kg"
    }

}

