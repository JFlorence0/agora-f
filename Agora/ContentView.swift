//
//  ContentView.swift
//  Agora
//
//  Created by James Florence on 2/2/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea()
            Text("Agora")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.black)
        }
    }
}

#Preview {
    ContentView()
}

