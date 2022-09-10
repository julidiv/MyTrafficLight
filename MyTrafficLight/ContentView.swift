//
//  ContentView.swift
//  MyTrafficLight
//
//

import SwiftUI

struct ContentView: View {
       @State private var alphaRed = 0.0
       @State private var alphaYellow = 0.0
       @State private var alphaGreen = 0.0
       var body: some View {
              VStack(spacing: 14) {
                     ColorCirclesView(color: .red)
                            .opacity(alphaRed)
                     ColorCircleYelloyView(colorYellow: .yellow)
                            .opacity(alphaYellow)
                     ColorCircleGreenView(colorGreen: .green)
                            .opacity(alphaGreen)
                     Spacer()
                     Button(action: {
                            startButtonPressed()
                     }, label: {
                            if alphaRed == 1.0 || alphaYellow == 1.0 || alphaGreen == 1.0 {
                                   Text("NEXT")
                                   
                                   } else {
                                   
                                   Text("START")
                                          
                                          .font(.title)
                                          .fontWeight(.regular)
                                          .foregroundColor(Color.white)
                                          .padding()
                                          .frame(width: 190, height: 60)
                                          .overlay(Rectangle()
                                          .stroke(Color.white, lineWidth: 10))
                                          .background(.blue)
                                          .cornerRadius(20)
                                          
                                   }
                     })
                     
              }
              
       }
       private func startButtonPressed() {
              if alphaRed < 1.0 && alphaYellow < 1.0 && alphaGreen < 1.0 {
                     alphaRed = 1.0
              } else if alphaRed == 1.0 {
                     alphaRed = 0.3
                     alphaYellow = 1.0
              } else if alphaYellow  == 1.0 {
                     alphaYellow  = 0.3
                     alphaGreen = 1.0
              } else if alphaGreen == 1.0 {
                     alphaGreen = 0.3
                     alphaRed = 1.0
              }
       }
}


struct ContentView_Previews: PreviewProvider {
       static var previews: some View {
              ContentView()
                     .preferredColorScheme(.dark)
       }
}
