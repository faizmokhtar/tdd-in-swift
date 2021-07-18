//
//  MenuListViewModel.swift
//  Albertos
//
//  Created by Faiz Mokhtar AD0502 on 18/07/2021.
//

import Foundation

extension MenuList {
    struct ViewModel {
        let sections: [MenuSection]
        
        init(
            menu: [MenuItem],
            menuGrouping: @escaping ([MenuItem]) -> [MenuSection] = groupMenuByCategory
        ) {
            self.sections = menuGrouping(menu)
        }
    }
}
