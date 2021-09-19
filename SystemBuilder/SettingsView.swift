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
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
