//
//  ViewController.swift
//  BMICalculator
//
//  Created by Marcelo Rodrigues de Sousa on 15/09/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightValueLabel: UILabel!
    @IBOutlet weak var weightValueLabel: UILabel!
    @IBAction func heightChanged(_ sender: UISlider) {
        heightValueLabel.text = "\(String(format: "%.1f", sender.value))m"
    }
    @IBAction func weightChanged(_ sender: UISlider) {
        weightValueLabel.text = "\(Int(sender.value))kg"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        heightSlider.value = 1.5
        heightValueLabel.text = "1.5m"
        weightSlider.value = 100
        weightValueLabel.text = "100m"
        
    }

}


