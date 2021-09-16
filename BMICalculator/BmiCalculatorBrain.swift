//
//  BmiCalculatorBrain.swift
//  BMICalculator
//
//  Created by Marcelo Rodrigues de Sousa on 15/09/21.
//

import Foundation

struct BmiCalculatorBrain{
    var weight : Float = 0.0
    var height : Float = 0.0
    var bmi : Bmi?
    var adviceForUser : String?
    
    mutating func calculateBmi(){
        let bmiValue = weight/pow(height,2)
        switch bmiValue {
        case ..<18.5:
            adviceForUser = "You should eat more snacks!"
        case 18.5..<24.9:
            adviceForUser = "Keep doing whatever you're doing!"
        case 24.9... :
            adviceForUser = "You should eat more salad!"
        default:
            adviceForUser = "None"
        }
        bmi = Bmi(value: bmiValue, advice: adviceForUser ?? "None")
    }
    func getBmi() -> String{
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    func getAdvice() -> String{
        return bmi?.advice ?? "None"
    }
}
