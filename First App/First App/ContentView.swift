//
//  ContentView.swift
//  First App
//
//  Created by dahami_js on 2023/09/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Welcome")
            Text("To")
                .font(.largeTitle)
                .bold()
                .background(Color.green)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
