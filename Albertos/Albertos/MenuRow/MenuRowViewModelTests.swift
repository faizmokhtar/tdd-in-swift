//
//  MenuRowViewModelTests.swift
//  AlbertosTests
//
//  Created by Faiz Mokhtar AD0502 on 18/07/2021.
//

import XCTest
@testable import Albertos

class MenuRowViewModelTests: XCTestCase {
    func testWhenItemIsNotSpicyTextIsItemNameOnly() {
        let item = MenuItem.fixture(name: "name", spicy: false)
        let viewModel = MenuRow.ViewModel(item: item)
        XCTAssertEqual(viewModel.text, "name")
    }
    
    func testWhenItemIsSpicyTextIsItemNameWithChiliEmoji() {
        let item = MenuItem.fixture(name: "name", spicy: true)
        let viewModel = MenuRow.ViewModel(item: item)
        XCTAssertEqual(viewModel.text, "name 🌶")
    }
}
