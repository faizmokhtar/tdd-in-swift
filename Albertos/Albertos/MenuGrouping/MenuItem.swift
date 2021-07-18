//
//  MenuItem.swift
//  Albertos
//
//  Created by Faiz Mokhtar AD0502 on 17/07/2021.
//

import Foundation

struct MenuItem {
    let category: String
    let name: String
}

extension MenuItem: Identifiable {
    var id: String { name }
}