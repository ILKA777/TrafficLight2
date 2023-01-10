//
//  ContentView.swift
//  TrafficLightUI
//
//  Created by Илья Морин on 10.01.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var opacityRed = 0.5
    @State private var opacityYellow = 0.5
    @State private var opacityGreen = 0.5
    
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                ColorCircleView(color: .red)
                    .opacity(opacityRed)
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                
                ColorCircleView(color: .yellow)
                    .opacity(opacityYellow)
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                
                ColorCircleView(color: .green)
                    .opacity(opacityGreen)
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                Spacer()
                Button(action: {
                    colorChanger()
                    
                }, label: {
                    if opacityRed == 1.0 || opacityYellow == 1.0 || opacityGreen == 1.0 {
                        Text ("NEXT")
                    } else {
                        Text("Start")
                    }
                    
                })
                .frame(width: 180, height: 60)
                .font(.system(size: 30, weight: .bold, design: .default))
                .foregroundColor(.white)
                .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.white, lineWidth: 4))
                .background(Color.blue).cornerRadius(15)
                
                
                
            }
            .padding(.top, 20)
            .padding(.bottom, 30)
        }
        
    }
    
    private func colorChanger() {
        if opacityRed < 1.0 && opacityYellow < 1.0 && opacityGreen < 1.0 {
            opacityRed = 1.0
        } else if opacityRed == 1.0 {
            opacityRed = 0.5
            opacityYellow = 1.0
        } else if opacityYellow == 1.0 {
            opacityYellow = 0.5
            opacityGreen = 1.0
        } else if opacityGreen == 1.0 {
            opacityGreen = 0.5
            opacityRed = 1.0
        }
        
    }
    
}
    
        
        

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
extension ContentView {
    enum CurrentLight {
        case red, yellow, green
    }
}
