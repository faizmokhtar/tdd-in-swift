//
//  MenuListViewModelTests.swift
//  AlbertosTests
//
//  Created by Faiz Mokhtar AD0502 on 18/07/2021.
//

import XCTest
import Combine
@testable import Albertos

class MenuListViewModelTests: XCTestCase {
    
    var cancellables = Set<AnyCancellable>()
    
    func testCallsGivenGroupingFunction() throws {
        try XCTSkipIf(true, "skipping this for now, keeping it to reuse part of the code later on")
        var called = false
        let inputSections = [MenuSection.fixture()]
        let spyClosure: ([MenuItem]) -> [MenuSection] = { items in
            called = true
            return inputSections
        }
        
        let viewModel = MenuList.ViewModel(menuFetching: MenuFetchingPlaceholder(), menuGrouping: spyClosure)
        let sections = viewModel.sections
        
        XCTAssertTrue(called)
        XCTAssertEqual(sections, inputSections)
    }
    
    func testWhenFetchingStartsPublishesEmptyMenu() {
        let viewModel = MenuList.ViewModel(menuFetching: MenuFetchingPlaceholder())
        
        XCTAssertTrue(viewModel.sections.isEmpty)
    }
    
    func testWhenFecthingSucceedsPublishesSectionsBuiltFromReceivedMenuAndGivenGroupingClosure() {
        var receivedMenu: [MenuItem]?
        let expectedSections = [MenuSection.fixture()]
        let spyClosure: ([MenuItem]) -> [MenuSection] = { items in
            receivedMenu = items
            return expectedSections
        }
        
        let viewModel = MenuList.ViewModel(menuFetching: MenuFetchingPlaceholder(), menuGrouping: spyClosure)
        
        let expectation = XCTestExpectation(description: "Publishes sections built from received menu and given grouping closure")
        
        viewModel.$sections
            .dropFirst()
            .sink { value in
                XCTAssertEqual(receivedMenu, menu)
                XCTAssertEqual(value, expectedSections)
                expectation.fulfill()
            }
            .store(in: &cancellables)
        
        wait(for: [expectation], timeout: 1)
    }
    
    func testWhenFetchingFailsPublishesAnError() {
        
    }
}
