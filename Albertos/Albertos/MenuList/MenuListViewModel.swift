//
//  MenuListViewModel.swift
//  Albertos
//
//  Created by Faiz Mokhtar AD0502 on 18/07/2021.
//

import Foundation
import Combine

extension MenuList {
    class ViewModel: ObservableObject {
        @Published private(set) var sections: [MenuSection]
        
        private var cancellables = Set<AnyCancellable>()

        init(
            menuFetching: MenuFetching,
            menuGrouping: @escaping ([MenuItem]) -> [MenuSection] = groupMenuByCategory
        ) {
            self.sections = []
            menuFetching
                .fetchMenu()
                .sink(
                    receiveCompletion: { _ in },
                    receiveValue: { [weak self] value in
                        self?.sections = menuGrouping(value)
                })
                .store(in: &cancellables)
        }
    }
}
