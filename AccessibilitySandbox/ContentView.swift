//
//  ContentView.swift
//  AccessibilitySandbox
//
//  Created by Adam Elfsborg on 2024-08-14.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            Button("Tap Me") {
                print("Button tapped")
            }
            .accessibilityInputLabels(["John Fitzgerald Kennedy", "Kenndy", "JFK"])
        }
    }
}

#Preview {
    ContentView()
}
