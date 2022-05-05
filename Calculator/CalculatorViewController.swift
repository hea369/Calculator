//
//  ViewController.swift
//  Calculator
//
//  Created by 박호현 on 2022/05/03.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    @IBOutlet weak var display: UILabel!
    var istypingdigit : Bool = false
    
    @IBAction func performOperation(_ sender: UIButton) {
        guard let operation = sender.titleLabel?.text else { return }
        if  operation == "π" {
            display.text = String(Double.pi)
        }
            istypingdigit = false
    }
    @IBAction func touchDigit(_ sender: UIButton) {
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
