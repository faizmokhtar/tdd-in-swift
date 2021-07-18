//
//  MenuSection.swift
//  Albertos
//
//  Created by Faiz Mokhtar AD0502 on 17/07/2021.
//

import Foundation

struct MenuSection {
    let category: String
    let items: [MenuItem]
}

extension MenuSection: Identifiable {
    var id: String { category }
}

extension MenuSection: Equatable {}
