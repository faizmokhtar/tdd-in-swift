//
//  MenuGrouping.swift
//  Albertos
//
//  Created by Faiz Mokhtar AD0502 on 17/07/2021.
//

import Foundation

func groupMenuByCategory(_ menu: [MenuItem]) -> [MenuSection] {
    return Dictionary(grouping: menu, by: { $0.category })
        .map({ key, value in MenuSection(category: key, items: value) })
        .sorted(by: { $0.category < $1.category })
}
