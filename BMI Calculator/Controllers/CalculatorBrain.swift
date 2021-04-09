//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Zimo Zhao on 4/9/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    var height : Float! = 1.0
    var weight : Float! = 100.0
    var bmi : BMI?
    
    mutating func calculateBMI() -> BMI {
        let bmiValue = Float( Float(weight) / Float(pow(Float(height), 2)))
        var adviceValue : String? = "default"
        var uiColorValue : UIColor
        
        //Assign BMI properties base on different range of BMI
        if bmiValue < 18.5 {
            adviceValue = "Underweight"
            uiColorValue = .blue
            adviceValue = "Eat more"
        } else if bmiValue < 24.9 {
            adviceValue = "Normal"
            uiColorValue = .green
            adviceValue = "You are doing fine"
        } else {
            adviceValue = "Overweight"
            uiColorValue = .red
            adviceValue = "Eat less!!!"
        }
        
        //Init BMI with properties
        bmi = BMI(value: String(format: "%.2f", bmiValue), advice: adviceValue!, color: uiColorValue)

        return bmi!
    }
}
