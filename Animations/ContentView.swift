//
//  ContentView.swift
//  Animations
//
//  Created by Nick Krasnitskiy on 07.11.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var enabled = false
    
    var body: some View {
        Button("Tap Me") {
            enabled.toggle()
        }
        .frame(width: 200, height: 200)
        .background(enabled ? .red : .blue)
        .animation(nil, value: enabled)
        .foregroundStyle(.white)
        .clipShape(RoundedRectangle(cornerRadius: enabled ? 60: 0))
        .animation(.spring(), value: enabled)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
