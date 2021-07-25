//
//  MenuItem.swift
//  Albertos
//
//  Created by Faiz Mokhtar AD0502 on 17/07/2021.
//

import Foundation

struct MenuItem: Decodable {
    let category: String
    let name: String
    let spicy: Bool
    let price: Double?
}

extension MenuItem: Identifiable {
    var id: String { name }
}

extension MenuItem: Equatable {}
