//
//  StringCalculator.swift
//  string_calculator
//
//  Created by VAIBHAV JOSHI on 05/06/25.
//

import Foundation

class StringCalculator {
    static func add(_ numbers: String) -> Int {
        if numbers.isEmpty {
            return 0
        }
        
        let components = numbers.components(separatedBy: ",")
        let intValues = components.compactMap { Int($0) }
        return intValues.reduce(0, +)
    }
}
