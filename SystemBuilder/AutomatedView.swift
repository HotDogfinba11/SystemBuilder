//
//  AutomatedView.swift
//  AutomatedView
//
//  Created by Oliver Harrison on 19/09/2021.
//

import SwiftUI
import PythonKit
import LightChart

struct AutomatedView: View {
       var body: some View {
           TabView {
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
    var body: some View {
        Text("GamingView")
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
