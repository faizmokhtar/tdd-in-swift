//
//  MenuItemTests.swift
//  AlbertosTests
//
//  Created by Faiz Mokhtar AD0502 on 24/07/2021.
//

import XCTest
@testable import Albertos

class MenuItemTests: XCTestCase {

    func testWhenDecodedFromJSONDataHasAllTheInputProperties() throws {
        let json = """
        {
            "name": "a name",
            "category": "a category",
            "spicy": true
        }
        """
        let data = try XCTUnwrap(json.data(using: .utf8))
        let item = try JSONDecoder().decode(MenuItem.self, from: data)

        XCTAssertEqual(item.name, "a name")
        XCTAssertEqual(item.category, "a category")
        XCTAssertEqual(item.spicy, true)
    }

}
