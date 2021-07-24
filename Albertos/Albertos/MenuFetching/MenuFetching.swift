//
//  MenuFetching.swift
//  Albertos
//
//  Created by Faiz Mokhtar AD0502 on 24/07/2021.
//

import Foundation
import Combine

protocol MenuFetching {
    func fetchMenu() -> AnyPublisher<[MenuItem], Error>
}
