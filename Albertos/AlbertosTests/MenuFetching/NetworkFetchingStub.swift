//
//  NetworkFetchingStub.swift
//  AlbertosTests
//
//  Created by Faiz Mokhtar AD0502 on 25/07/2021.
//

import Foundation
import Combine
@testable import Albertos

class NetworkFetchingStub: NetworkFetching {
    
    private let result: Result<Data, URLError>

    init(returning result: Result<Data, URLError>) {
        self.result = result
    }

    func load(_ request: URLRequest) -> AnyPublisher<Data, URLError> {
        return result.publisher
            .delay(for: 0.01, scheduler: RunLoop.main)
            .eraseToAnyPublisher()
    }
}
