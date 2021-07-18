//
//  MenuRowViewModel.swift
//  Albertos
//
//  Created by Faiz Mokhtar AD0502 on 18/07/2021.
//

import Foundation

extension MenuRow {
    struct ViewModel {
        let text: String
        
        init(item: MenuItem) {
            text = item.spicy ? "\(item.name) 🌶" : "\(item.name)"
        }
    }
}
