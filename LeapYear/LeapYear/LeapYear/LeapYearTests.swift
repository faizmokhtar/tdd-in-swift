//
//  LeapYearTests.swift
//  LeapYearTests
//
//  Created by Faiz Mokhtar AD0502 on 17/07/2021.
//

import XCTest
@testable import LeapYear

class LeapYearTests: XCTestCase {
    func testEvenlyDivisibleBy4IsLeap() {
        XCTAssertTrue(isLeap(2020))
    }
    
    func testEvenlyDivisibleBy100IsNotLeap() {
        XCTAssertFalse(isLeap(2100))
    }
    
    func testEvenlyDivisibleBy400IsLeap() {
        XCTAssertTrue(isLeap(2000))
    }
    
    func testNotEvenlyDivisibleBy4Or400IsNotLeap() {
        XCTAssertFalse(isLeap(2021))
    }
}
