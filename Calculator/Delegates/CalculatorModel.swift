//
//  CalculatorModel.swift
//  Calculator
//
//  Created by 박호현 on 2022/05/05.
//

import Foundation

class CalculatorModel {
    private var accumlator: Double = 0.0
    private var lastOperation: String?
    func setOperand(operand: Double) {
        if lastOperation == "+" {
            lastOperation = nil
            accumlator = accumlator + operand
        }
        else {
            accumlator = operand
        }
    }
    func performOperation(symbol: String) {
        switch symbol {
        case "π":
            accumlator = Double.pi
        case "√":
            accumlator = sqrt(accumlator)
        case "+":
            lastOperation = symbol
        default : break
        }
    }
    var result : Double {
        get {
            return accumlator
        }
    }
}
