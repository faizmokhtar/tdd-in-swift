//
//  MenuFetchingPlaceholder.swift
//  Albertos
//
//  Created by Faiz Mokhtar AD0502 on 24/07/2021.
//

import Foundation
import Combine

class MenuFetchingPlaceholder: MenuFetching {
    func fetchMenu() -> AnyPublisher<[MenuItem], Error> {
        return Future { $0(.success(menu)) }
            .delay(for: 0.5, scheduler: RunLoop.main)
            .eraseToAnyPublisher()
    }
}
