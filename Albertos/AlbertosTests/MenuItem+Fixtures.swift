//
//  MenuItem+Fixtures.swift
//  AlbertosTests
//
//  Created by Faiz Mokhtar AD0502 on 18/07/2021.
//

import Foundation
@testable import Albertos

extension MenuItem {
    static func fixture(category: String = "category", name: String = "menu", spicy: Bool = false, price: Double = 5.0) -> MenuItem {
        MenuItem(category: category, name: name, spicy: spicy, price: price)
    }
}
