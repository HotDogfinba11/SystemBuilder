//
//  FavouritedView.swift
//  FavouritedView
//
//  Created by Oliver Harrison on 19/09/2021.
//

import SwiftUI

struct PCType: Identifiable {
    let id: Int
    let name: String
    let type: String
    let icon: String
    let price: String
}

struct FavouritedView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct FavouritedView_Previews: PreviewProvider {
    static var previews: some View {
        FavouritedView()
    }
}
