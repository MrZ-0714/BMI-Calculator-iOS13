//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Zimo Zhao on 4/9/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {
    var bmiValue : Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.red
        
        let label = UILabel()
        label.text = String(format: "%.2f",  bmiValue)
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
    }
}
