//
//  ColorCircleYelloyView.swift
//  MyTrafficLight
//
//

import SwiftUI

struct ColorCircleYelloyView: View {
    let colorYellow:Color
    var body: some View {
        Circle()
            .foregroundColor(colorYellow)
            .frame(width: 111, height: 111 )
            .overlay(Circle()
            .stroke(Color.white, lineWidth: 4))
            .shadow(radius: 15)
    }
    
}

struct ColorCircleYelloyView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircleYelloyView(colorYellow: .yellow)
    }
}
