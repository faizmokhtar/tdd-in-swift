//
//  MenuSection+Fixtures.swift
//  AlbertosTests
//
//  Created by Faiz Mokhtar AD0502 on 18/07/2021.
//

import Foundation
@testable import Albertos

extension MenuSection {
    static func fixture(category: String = "a category", items: [MenuItem] = [.fixture()]) -> MenuSection {
        MenuSection(category: category, items: items)
    }
}
