//
//  URLSession+NetworkFetching.swift
//  Albertos
//
//  Created by Faiz Mokhtar AD0502 on 25/07/2021.
//

import Foundation
import Combine

extension URLSession: NetworkFetching {
    func load(_ request: URLRequest) -> AnyPublisher<Data, URLError> {
        return dataTaskPublisher(for: request)
            .map({ $0.data })
            .eraseToAnyPublisher()
    }
}
