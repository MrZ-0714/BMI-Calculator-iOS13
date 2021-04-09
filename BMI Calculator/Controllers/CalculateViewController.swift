//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    var cB = CalculatorBrain()
    
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
        cB.height = sender.value
        heightLabel.text = "\(String(format:"%.2f", cB.height! )) m"
    }
    @IBAction func weightSliderValueChanged(_ sender: UISlider) {
        cB.weight = sender.value
        weightLabel.text = "\(String(format:"%.2f", cB.weight! )) kg"
    }

    @IBAction func calculatePressed(_ sender: Any) {
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiResult = cB.calculateBMI()
        }
    }
}

