//
//  SystemBuilderApp.swift
//  SystemBuilder
//
//  Created by Oliver Harrison on 19/09/2021.
//

import SwiftUI

@main // First struct to be ran at runtime
struct SystemBuilderApp: App { // Initialises main window view
    var body: some Scene {
        WindowGroup { // Defines content that is part of the program when compiling
            ContentView() // Main view of the program, first to be rendered
        }
        Settings { // Swift's indication for which view shall be attached to settings
            SettingsView()
        }
    }
}
