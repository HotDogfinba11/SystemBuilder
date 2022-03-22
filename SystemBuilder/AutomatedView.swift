//
//  AutomatedView.swift
//  AutomatedView
//
//  Created by Oliver Harrison on 19/09/2021.
//

import SwiftUI
import PythonKit // Implement Python code interoperability
import LightChart // Custom charts package to be included

struct AutomatedView: View {
       var body: some View {
           TabView { // Creates clickable tabs
               GamingView()
                   .tabItem {
                       Text("Gaming")
                   }
               WorkstationView()
                   .tabItem {
                       Text("Workstation")
                   }
               HighendView()
                   .tabItem {
                       Text("High-end Desktop")
                   }
           }
       }
}

struct AutomatedView_Previews: PreviewProvider {
    static var previews: some View {
        AutomatedView()
    }
}

struct GamingView: View {
    @State private var budgetValue: String="" // Default to empty string
    
    var body: some View {
        VStack {
            HStack {
                Form { // Field for user to enter a value manually
                    TextField("Budget", text: $budgetValue) // Value of PC build, entered by user
                }
                .frame(width: 200, height: 200) // Width and height in pixels
            }
        }
    }
}

struct  WorkstationView: View {
    var body: some View {
        Text("WorkstationView")
    }
}

struct HighendView: View {
    var body: some View {
        Text("HighendView")
    }
}
