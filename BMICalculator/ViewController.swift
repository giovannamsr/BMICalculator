//
//  ViewController.swift
//  BMICalculator
//
//  Created by Giovanna Rodrigues on 15/09/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightValueLabel: UILabel!
    @IBOutlet weak var weightValueLabel: UILabel!
    var bmiCalculatorBrain = BmiCalculatorBrain()
    
    @IBAction func heightChanged(_ sender: UISlider) {
        heightValueLabel.text = "\(String(format: "%.2f", sender.value))m"
    }
    @IBAction func weightChanged(_ sender: UISlider) {
        weightValueLabel.text = "\(Int(sender.value))kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        bmiCalculatorBrain.height = heightSlider.value
        bmiCalculatorBrain.weight = weightSlider.value
        bmiCalculatorBrain.calculateBmi()
        self.performSegue(withIdentifier: "goToResultView", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResultView"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmi = self.bmiCalculatorBrain.getBmi()
            destinationVC.advice = self.bmiCalculatorBrain.getAdvice()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        heightSlider.value = 1.5
        heightValueLabel.text = "1.50m"
        weightSlider.value = 100
        weightValueLabel.text = "100kg"
        
    }

}


