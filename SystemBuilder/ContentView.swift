//
//  ContentView.swift
//  SystemBuilder
//
//  Created by Oliver Harrison on 19/09/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                List {
                    Section(header: Text("System Builder")) {
                        NavigationLink(destination: AutomatedView()){
                            Label("Build", systemImage: "macpro.gen3")
                        }
                        NavigationLink(destination: FavouritedView()) {
                            Label("Favourites", systemImage: "heart")
                        }
                    }
                }
                .frame(minWidth: 150)
                .toolbar {
                    ToolbarItem(placement: .automatic) {
                        Button(action: {
                            NSApp.keyWindow?.firstResponder?.tryToPerform(#selector(NSSplitViewController.toggleSidebar(_:)), with: nil)
                        }) {
                            Image(systemName: "sidebar.left")
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
