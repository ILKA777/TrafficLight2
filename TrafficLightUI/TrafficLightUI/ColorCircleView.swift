//
//  ColorCircleView.swift
//  TrafficLightUI
//
//  Created by Илья Морин on 10.01.2023.
//

import SwiftUI

struct ColorCircleView: View {
    let color: Color
    var body: some View {
        
        Circle()
            .foregroundColor(color)
            .frame(width: 100, height: 100)
        
    }
}

struct ColorCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircleView(color: .red)
    }
}
