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
        //GeometryReader { geometry in
            VStack {
                Text("Awesome!")
                    .fontWeight(.black)
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(.indigo)
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
                
//                Divider()
//                    .background(.black)
//                    .padding()
//                    .frame(width: 150.0)
//                
//                Rectangle() //rectangle to mimick divider
//                    .fill(.indigo)
//                    .frame(width: geometry.size.width * 2/3, height: 1)
                
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
                
                Rectangle()
                    .frame(height: 0)
                    .background(.indigo)
            //}
        }
        
        
        
    }
}

#Preview {
    ContentView()
}
