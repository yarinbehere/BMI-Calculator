//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Yarin Belker on 08/10/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
	var bmi: BMI?
	
	func getBMIValue() -> String {
		return bmi?.value ?? "0.0"
	}
	
	mutating func calculateBMI(height: Float, weight: Float) {
		let bmiValue = weight / (height*height)
		var curAdvice: String
		var curColor: UIColor
		if bmiValue < 18.5 {
			curAdvice = "Eat more pies!"
			curColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
		}
		else if bmiValue < 24.9 {
			curAdvice = "Fit as a fiddle!"
			curColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
		}
		else {
			curAdvice = "Eat less pies!"
			curColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
		}
		bmi = BMI(value: String(format: "%.1f", bmiValue), advice: curAdvice, color: curColor)
	}
	
	func getColor() -> UIColor {
		return bmi?.color ?? UIColor.purple
	}
	
	func getAdvice() -> String {
		return bmi?.advice ?? "Please insert data"
	}
	
	
}
