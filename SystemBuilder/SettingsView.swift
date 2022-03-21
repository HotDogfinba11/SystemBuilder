//
//  SettingsView.swift
//  SettingsView
//
//  Created by Oliver Harrison on 19/09/2021.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        TabView { // Creates clickable tabs
            Form {
                Section(header: Text("Retailers"), // First header
                        footer: Text("Disabing retailers will prevent the automatic PC builder from using said retailer.")) { // Description text
                    Toggle(isOn: .constant(true), // Interactable toggle, forced to on until functionality added
                           label: {
                        Text("Amazon") // Text aligned with the toggle, indicating which source is related
                    })
                }
                Section(header: Text("About"), // Second header
                        footer: Text("A-level programming project")) { // Description text
                    Link("Source code is available on Github", destination: URL(string: "https://github.com/HotDogfinba11/SystemBuilder")!) // Standard text made blue due to hyperlink, linking to source code
                    Label("Version 0", systemImage: "info.circle") // Current version with SF symbol
                }
            }
            .tabItem { // Adds any successive Label functions as a tab
                Label("Settings", systemImage: "gear") // Clickable tab with hard-coded string and SF symbol
            }
        }
        .frame(width: 500, height: 250) // Pixel dimensions for SettingsView, hard-coded and not user adjustable
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
