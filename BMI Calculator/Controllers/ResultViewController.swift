//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Yarin Belker on 07/10/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

	var bmiValue: String?
	var color: UIColor?
	var advice: String?
	
	@IBOutlet weak var bmiLabel: UILabel!
	@IBOutlet weak var adviceLabel: UILabel!
	
	
	override func viewDidLoad() {
        super.viewDidLoad()

		bmiLabel.text = bmiValue
		adviceLabel.text = advice
		self.view.backgroundColor = color
    }
    
	@IBAction func recalculatePressed(_ sender: UIButton) {
		self.dismiss(animated: true, completion: nil)
	}
	


}
