//
//  BuildView.swift
//  BuildView
//
//  Created by Oliver Harrison on 19/09/2021.
//

import SwiftUI
import LightChart

struct BuildView: View {
    var body: some View {
        ScrollView {
            GroupBox(
                label: Label("Average price over time", systemImage: "sterlingsign.square.fill")
                    .foregroundColor(.green)
            ){
                LightChartView(data: [2, 30, 9, 23, 10, 20, 15, 17, 6, 23],
                                type: .curved,
                                visualType: .filled(color: .yellow, lineWidth: 5))
                
            }
            .padding()
        }
    }
}

struct BuildView_Previews: PreviewProvider {
    static var previews: some View {
        BuildView()
    }
}
