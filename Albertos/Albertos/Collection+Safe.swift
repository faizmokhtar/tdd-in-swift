//
//  Collection+Safe.swift
//  Albertos
//
//  Created by Faiz Mokhtar AD0502 on 17/07/2021.
//

import Foundation

extension Collection {
    /// Returns the element at the given index if it is within
    /// range, otherwise nil.
    subscript(safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
