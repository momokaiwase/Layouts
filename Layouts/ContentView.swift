//
//  ContentView.swift
//  Layouts
//
//  Created by Momoka Iwase on 2025/02/03.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = ""
    var body: some View {
        VStack {
            
            Text(messageString)
                .fontWeight(.heavy)
                .font(.largeTitle)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundStyle(.red)
                .frame(height: 150)
                .frame(maxWidth: .infinity)
                .border(.orange, width: 2)
                .padding()
                
            
            HStack {
                Button("Awesome") {
                    messageString = "You Are Awesome!"
                }
                Button("Great") {
                    messageString = "You Are Great!"
                }
            }
            .buttonStyle(.borderedProminent)
            .border(.purple, width: 5)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
