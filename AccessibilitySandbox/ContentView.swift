//
//  ContentView.swift
//  AccessibilitySandbox
//
//  Created by Adam Elfsborg on 2024-08-14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image(decorative: "character")
        
        VStack {
            Text("Your score is")
            Text("1000")
                .font(.title)
        }
        .accessibilityElement()
        .accessibilityLabel("Your score is 1000")
    }
}

#Preview {
    ContentView()
}
