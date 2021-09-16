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
    var bmi : Float = 0.0
    
    mutating func calculateBmi(){
        bmi = weight/pow(height,2)
    }
    func getBmi() -> Float{
        return bmi
    }
}
