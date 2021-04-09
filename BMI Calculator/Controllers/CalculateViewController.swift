//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    var bmiValue : String?
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSliderValueChanged(_ sender: UISlider) {
        heightLabel.text = "\(String(format:"%.2f", sender.value)) m"
    }
    @IBAction func weightSliderValueChanged(_ sender: UISlider) {
        weightLabel.text = "\(String(format:"%.2f", sender.value)) kg"
    }

    @IBAction func calculatePressed(_ sender: Any) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        let BMI = weight / pow(height, 2)
        bmiValue = String(format: "%.2f", BMI)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = bmiValue
        }
        
    }
}

