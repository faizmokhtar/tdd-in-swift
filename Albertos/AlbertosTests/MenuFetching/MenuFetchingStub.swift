//
//  MenuFetchingStub.swift
//  AlbertosTests
//
//  Created by Faiz Mokhtar AD0502 on 24/07/2021.
//

import Foundation
import Combine
@testable import Albertos

class MenuFetchingStub: MenuFetching {
    let result: Result<[MenuItem], Error>
    
    init(returning result: Result<[MenuItem], Error>) {
        self.result = result
    }
    
    func fetchMenu() -> AnyPublisher<[MenuItem], Error> {
        return result
            .publisher
            .delay(for: 0.1, scheduler: RunLoop.main)
            .eraseToAnyPublisher()
    }
}
