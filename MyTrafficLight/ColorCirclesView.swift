//
//  ColorCirclesView.swift
//  MyTrafficLight
//
//

import SwiftUI

struct ColorCirclesView: View {
    let color:Color
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 111, height: 111 )
            .overlay(Circle()
            .stroke(Color.white, lineWidth: 4))
            .shadow(radius: 15)
            
    }
    
}


struct ColorCirclesView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCirclesView(color: .red)
    }
}
