//
//  LeapYear.swift
//  LeapYear
//
//  Created by Faiz Mokhtar AD0502 on 17/07/2021.
//

import Foundation

func isLeap(_ year: Int) -> Bool {
    guard year % 400 != 0 else { return true }
    guard year % 100 != 0 else { return false }
    return year % 4 == 0
}
