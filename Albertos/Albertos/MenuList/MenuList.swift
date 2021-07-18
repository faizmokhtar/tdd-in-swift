//
//  ContentView.swift
//  Albertos
//
//  Created by Faiz Mokhtar AD0502 on 17/07/2021.
//

import SwiftUI

struct MenuList: View {
    let viewModel: ViewModel

    var body: some View {
        List {
            ForEach(viewModel.sections) { section in
                Section(header: Text(section.category)) {
                    ForEach(section.items) { item in
                        MenuRow(viewModel: .init(item: item))
                    }
                }
            }
            .navigationTitle("Alberto's 🇮🇹")
        }
    }
}

struct MenuList_Previews: PreviewProvider {
    static var previews: some View {
        MenuList(viewModel: .init(menu: [], menuGrouping: groupMenuByCategory(_:)))
    }
}
