//
//  ContentView.swift
//  Albertos
//
//  Created by Faiz Mokhtar AD0502 on 17/07/2021.
//

import SwiftUI

struct MenuList: View {
    @ObservedObject var viewModel: ViewModel

    var body: some View {
        switch viewModel.sections {
        case .success(let sections):
            List {
                ForEach(sections) { section in
                    Section(header: Text(section.category)) {
                        ForEach(section.items) { item in
                            MenuRow(viewModel: .init(item: item))
                        }
                    }
                }
                .navigationTitle("Alberto's 🇮🇹")
            }
        case .failure(let error):
            VStack {
                Text("An error occured:")
                Text(error.localizedDescription).italic()
            }
        }
    }
}

struct MenuList_Previews: PreviewProvider {
    static var previews: some View {
        MenuList(viewModel: .init(menuFetching: MenuFetchingPlaceholder(), menuGrouping: groupMenuByCategory(_:)))
    }
}
