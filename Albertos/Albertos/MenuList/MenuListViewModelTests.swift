//
//  MenuListViewModelTests.swift
//  AlbertosTests
//
//  Created by Faiz Mokhtar AD0502 on 18/07/2021.
//

import XCTest
@testable import Albertos

class MenuListViewModelTests: XCTestCase {
    func testCallsGivenGroupingFunction() {
        var called = false
        let inputSections = [MenuSection.fixture()]
        let spyClosure: ([MenuItem]) -> [MenuSection] = { items in
            called = true
            return inputSections
        }
        
        let viewModel = MenuList.ViewModel(menu: [.fixture()], menuGrouping: spyClosure)
        let sections = viewModel.sections
        
        XCTAssertTrue(called)
        XCTAssertEqual(sections, inputSections)
    }
}
