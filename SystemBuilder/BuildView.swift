//
//  BuildView.swift
//  BuildView
//
//  Created by Oliver Harrison on 19/09/2021.
//

import SwiftUI
import LightChart // Custom charts package to be included

struct BuildView: View {
    var body: some View {
        ScrollView { // User can scroll between all elements in view, y-coordinates can extend beyond canvas size
            GroupBox( // Combine included elements into an individual section
                label: Label("Average price over time", systemImage: "sterlingsign.square.fill")
                    .foregroundColor(.green) // Small text above the graph to indicate what data is displayed
            ){
                LightChartView(data: [2, 30, 9, 23, 10, 20, 15, 17, 6, 23], // Custom LightChartView for the graph, with temporary demo data
                                type: .curved,
                                visualType: .filled(color: .yellow, lineWidth: 5))
                
            }
            .padding() // Prevents elements aligning against furthest left and top borders of the view
            .frame(minWidth: 320, minHeight: 200, maxHeight: 200) // Smallest and largest user-adjustable width and height in pixels
        }
        .navigationTitle("Build") // Top bar name
    }
}

struct BuildView_Previews: PreviewProvider {
    static var previews: some View {
        BuildView()
    }
}
