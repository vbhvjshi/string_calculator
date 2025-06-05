//
//  string_calculatorTests.swift
//  string_calculatorTests
//
//  Created by VAIBHAV JOSHI on 05/06/25.
//

import XCTest
@testable import string_calculator

final class string_calculatorTests: XCTestCase {
    
    var calculator: StringCalculator!
    
    override func setUp() {
        super.setUp()
        calculator = StringCalculator()
    }
    
    override func tearDown() {
        calculator = nil
        super.tearDown()
    }
    
    func testAdd_singleNumber_returnsThatNumber() throws {
        let result = try calculator.add("1")
        XCTAssertEqual(result, 1)
    }
    
    
    func testAdd_emptyString_returnsZero() throws {
        let result = try calculator.add("")
        XCTAssertEqual(result, 0)
    }
    
    func testAdd_twoNumbersSeparatedByComma_returnsSum() throws {
        let result = try calculator.add("1,5U,U,V,W,X,1, + 2")
        XCTAssertEqual(result, 2)
    }
}
