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
    @State var PCList = [
        PCType(id: 0, name: "Nephew's PC", type: "Gaming", icon: "discord", price: "£700"),
        PCType(id: 1, name: "Grandad's PC", type: "Gaming", icon: "discord", price: "£1500"),
        PCType(id: 2, name: "Daughter's PC", type: "Desktop", icon: "apple", price: "£350"),
        PCType(id: 3, name: "Staff PC", type: "Video editing", icon: "video", price: "£800"),
    ]
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct FavouritedView_Previews: PreviewProvider {
    static var previews: some View {
        FavouritedView()
    }
}
