//
//  AutomatedView.swift
//  AutomatedView
//
//  Created by Oliver Harrison on 19/09/2021.
//

import SwiftUI
import PythonKit

struct AutomatedView: View {
       var body: some View {
           TabView {
               GenerationView()
                   .tabItem {
                       Text("Gaming")
                   }
               GenerationView()
                   .tabItem {
                       Text("Workstation")
                   }
               GenerationView()
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

struct GenerationView: View {
    var body: some View {
        Text("build")
    }
}
