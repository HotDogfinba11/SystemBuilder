//
//  SettingsView.swift
//  SettingsView
//
//  Created by Oliver Harrison on 19/09/2021.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        TabView {
            Form {
                Section(header: Text("Retailers"),
                        footer: Text("Disabing retailers will prevent the automatic PC builder from using said retailer.")) {
                    Toggle(isOn: .constant(true),
                           label: {
                        Text("Amazon")
                    })
                }
                Section(header: Text("About"),
                        footer: Text("A-level programming project")) {
                    Link("Source code is available on Github", destination: URL(string: "https://github.com/HotDogfinba11/SystemBuilder")!)
                    Label("Version 0", systemImage: "info.circle")
                }
            }
            .tabItem {
                Label("Settings", systemImage: "gear")
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
