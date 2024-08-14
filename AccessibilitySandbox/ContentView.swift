//
//  ContentView.swift
//  AccessibilitySandbox
//
//  Created by Adam Elfsborg on 2024-08-14.
//

import SwiftUI

struct ContentView: View {
    let pictures = [
        "ales-krivec-15949",
        "galina-n-189483",
        "kevin-horstmann-141705",
        "nicolas-tissot-335096"
    ]
    
    let labels = [
        "Tulips",
        "Frozen tree buds",
        "Sunflowers",
        "Fireworks"
    ]
    
    @State private var selectedPicture = 0
    
    var body: some View {
        Image(pictures[selectedPicture])
            .resizable()
            .scaledToFit()
            .onTapGesture {
                setRandomPicture()
            }
            .accessibilityLabel(labels[selectedPicture])
            .accessibilityAddTraits(.isButton)
            .accessibilityRemoveTraits(.isImage)
        
        Button {
            setRandomPicture()
        } label: {
            Image(pictures[selectedPicture])
                .resizable()
                .scaledToFit()
        }
        .accessibilityLabel(labels[selectedPicture])
    }
    
    init() {
        setRandomPicture()
    }
    
    func setRandomPicture() {
        selectedPicture = Int.random(in: 0...3)
    }
}

#Preview {
    ContentView()
}
