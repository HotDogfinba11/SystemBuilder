//
//  ContentView.swift
//  SystemBuilder
//
//  Created by Oliver Harrison on 19/09/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var ShowingView = true // Variable for forcing the view to open by default
    
    var body: some View {
        NavigationView { // Side menu contents
            VStack { // Vertical stack for elements on top of each other
                List { // Interactable list to hide sub items
                    Section(header: Text("System Builder")) { // Top-level list name
                        NavigationLink(destination: AutomatedView(), isActive: $ShowingView){ // Default view to render when opening the program
                            Label("Build", systemImage: "macpro.gen3") // 
                        }
                        NavigationLink(destination: FavouritedView()) {
                            Label("Favourites", systemImage: "heart")
                        }
                    }
                }
                .frame(minWidth: 150) // Forcing user-adjustable width to a minimum of 150 pixels
                .toolbar { // Create toolbar inside of NavigationView
                    ToolbarItem(placement: .automatic) {
                        Button(action: {
                            NSApp.keyWindow?.firstResponder?.tryToPerform(#selector(NSSplitViewController.toggleSidebar(_:)), with: nil) // Standard implementation of collapsable NavigationView
                        }) {
                            Image(systemName: "sidebar.left") // SF symbol to represent collapsing function
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
