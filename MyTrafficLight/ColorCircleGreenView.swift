//
//  ColorCircleGreenView.swift
//  MyTrafficLight
//
//

import SwiftUI

struct ColorCircleGreenView: View {
    let colorGreen:Color
    var body: some View {
        Circle()
            .foregroundColor(colorGreen)
            .frame(width: 111, height: 111 )
            .overlay(Circle()
            .stroke(Color.white, lineWidth: 4))
            .shadow(radius: 15)
    }
}

struct ColorCircleGreenView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircleGreenView(colorGreen: .green)
    }
}
