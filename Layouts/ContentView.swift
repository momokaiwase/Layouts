//
//  ContentView.swift
//  Layouts
//
//  Created by Momoka Iwase on 2025/02/03.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = "When the Genius Bar Needs Help, They Call You!"
    var body: some View {
        VStack {
            Text("You Have Skills!")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.goldBC)
                .padding()
                .background(.maroonBC)
                //.padding(1)
                .clipShape(RoundedRectangle(cornerRadius: 15))
            Spacer()
            Text(messageString)
                .fontWeight(.heavy)
                .font(.largeTitle)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundStyle(.red)
                .frame(height: 150)
                .frame(maxWidth: .infinity)
//                .border(.orange, width: 2)
                .padding()
  
            Spacer()
            
            HStack {
                Button("Awesome") {
                    messageString = "You Are Awesome!"
                }
                Spacer()
                Button("Great") {
                    messageString = "You Are Great!"
                }
            }
            .buttonStyle(.borderedProminent)
//            .border(.purple, width: 5)
            .padding()
            .tint(.vermillion)
        }
        .background(
            Gradient(colors: [.orange, .yellow])
        )
    }
}

#Preview {
    ContentView()
}
