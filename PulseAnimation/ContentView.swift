//  /*
//
//  Project: PulseAnimation
//  File: ContentView.swift
//  Created by: Elaidzha Shchukin
//  DAte: 22.09.2023
//
//  */

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
         
            Rotating()
        }
        .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Rotating: View {
    @State var animate = false
    
    var body: some View {
        
        ZStack {
            
            Circle()
                .fill(.white.opacity(0.20))
                .frame(width: 350, height: 350)
                .scaleEffect(self.animate ? 1 : 0)
            
            Circle()
                .fill(.white.opacity(0.30))
                .frame(width: 250, height: 250)
                .scaleEffect(self.animate ? 1 : 0)
            
            Circle()
                .fill(.white.opacity(0.40))
                .frame(width: 150, height: 150)
                .scaleEffect(self.animate ? 1 : 0)
            
            Circle()
                .fill(.white)
                .frame(width: 50, height: 50)
        }
        .onAppear {
            self.animate.toggle()
        }
        .animation(Animation.linear(duration: 1.5).repeatForever(autoreverses: false))
    }
}
