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
        Button(action: test) {
            Text("Test")
        }
    }
    func test() {
        print(Python.versionInfo.description)
    }
}

struct AutomatedView_Previews: PreviewProvider {
    static var previews: some View {
        AutomatedView()
    }
}
