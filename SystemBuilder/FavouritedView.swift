//
//  FavouritedView.swift
//  FavouritedView
//
//  Created by Oliver Harrison on 19/09/2021.
//

import SwiftUI

struct PCType: Identifiable { // Defining new variables to be used in this view
    let id: Int // Stores integers, order for items to be listed
    let name: String // Stored name of the PC
    let type: String // Category of PC created by the program
    let icon: String // Corresponding icon name for the category of PC
    let price: String // Price of the PC at time of building
}

struct FavouritedView: View {
    @State var PCList = [
        PCType(id: 0, name: "Nephew's PC", type: "Gaming", icon: "discord", price: "£700"),
        PCType(id: 1, name: "Grandad's PC", type: "Gaming", icon: "discord", price: "£1500"),
        PCType(id: 2, name: "Daughter's PC", type: "Desktop", icon: "apple", price: "£350"),
        PCType(id: 3, name: "Staff PC", type: "Rendering", icon: "video", price: "£800"),
    ]
    
    var body: some View {
        NavigationView {
            List(PCList) { pclist in // Generating new list items based on PCList array elements
                NavigationLink(destination: BuildView()) { // Assign each list entry to open BuildView
                    HStack { // Horizontal stack to load PC icon and name next to each other
                        Image(pclist.icon)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                        VStack(alignment: .leading, spacing: 5, content: { // Directly below PC icon and name, place PC type name and price
                            Text(pclist.name) // Read from pclist array the 'name' element
                                .font(.title2)
                                .fontWeight(.bold)
                            Text("\(pclist.type) PC, price of \(pclist.price)") //Read from pclist array the 'type' and 'price' elements
                                .font(.caption)
                                .foregroundColor(Color.secondary)
                        })
                    }
                }
            }
            .listStyle(DefaultListStyle()) // SwiftUI declaration for pre-defined list style
            .frame(minWidth: 220) // Smallest user-adjustable width in pixels
        }
        .navigationTitle("Favourites") // Top bar name
    }
}

struct FavouritedView_Previews: PreviewProvider {
    static var previews: some View {
        FavouritedView()
    }
}
