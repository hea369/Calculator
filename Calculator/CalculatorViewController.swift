//
//  ViewController.swift
//  Calculator
//
//  Created by 박호현 on 2022/05/03.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    var model : CalculatorModel = CalculatorModel()
    @IBOutlet private weak var display: UILabel!
    private var istypingdigit : Bool = false
    private var displayValue : Double {
        get {
            guard let text = display.text else { return 0 }
            return Double(text) ?? 0
        }
        set {
            display.text = String("\(newValue)")
        }
    }
    @IBAction private func performOperation(_ sender: UIButton) {
        guard let operation = sender.titleLabel?.text else { return }
        model.setOperand(operand: displayValue)
        model.performOperation(symbol: operation)
        displayValue = model.result
        istypingdigit = false
    }
    @IBAction private func touchDigit(_ sender: UIButton) {
        guard let digit = sender.titleLabel?.text,
              let correnttext = display.text else { return }
        if istypingdigit {
            display.text = correnttext + digit
        } else {
            display.text = digit
        }
        istypingdigit = true
    }
    
}
