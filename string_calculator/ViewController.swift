//
//  ViewController.swift
//  string_calculator
//
//  Created by VAIBHAV JOSHI on 05/06/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var inputTextField: UITextField!
    @IBOutlet private weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func calculate(_ sender: UIButton) {
        guard let input = inputTextField.text else { return }
        let sum = StringCalculator.add(input)
        resultLabel.text = "Result = \(sum)"
    }
    
    @IBAction func clear(_ sender: UIButton) {
        resultLabel.text = "Result = 0"
        inputTextField.text = ""
    }
}
