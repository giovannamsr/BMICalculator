//
//  ResultViewController.swift
//  BMICalculator
//
//  Created by Marcelo Rodrigues de Sousa on 15/09/21.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var bmiResultLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    var bmi : String?
    var advice : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiResultLabel.text = bmi
        adviceLabel.text = advice
    }
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
