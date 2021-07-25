//
//  NetworkFetching.swift
//  Albertos
//
//  Created by Faiz Mokhtar AD0502 on 25/07/2021.
//

import Foundation
import Combine

protocol NetworkFetching {
    func load(_ request: URLRequest) -> AnyPublisher<Data, URLError>
}
