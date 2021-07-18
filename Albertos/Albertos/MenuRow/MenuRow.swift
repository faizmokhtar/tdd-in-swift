//
//  MenuRow.swift
//  Albertos
//
//  Created by Faiz Mokhtar AD0502 on 18/07/2021.
//

import SwiftUI

struct MenuRow: View {
    let viewModel: ViewModel

    var body: some View {
        Text(viewModel.text)
    }
}

struct MenuRow_Previews: PreviewProvider {
    static var previews: some View {
        MenuRow(viewModel: .init(item: MenuItem(category: "category", name: "name", spicy: true, price: 5.0)))
    }
}
