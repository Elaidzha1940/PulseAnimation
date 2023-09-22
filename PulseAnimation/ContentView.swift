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
    var body: some View {
        
        ZStack {
            
            Circle()
                .fill(.white.opacity(0.25))
                .frame(width: 350, height: 350)
            
            Circle()
                .fill(.white.opacity(0.25))
                .frame(width: 350, height: 350)
            
            Circle()
                .fill(.white.opacity(0.25))
                .frame(width: 350, height: 350)
            
            Circle()
                .fill(.white.opacity(0.25))
                .frame(width: 350, height: 350)
        }
    }
}
