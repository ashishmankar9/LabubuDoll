//
//  ContentView.swift
//  Labubu Doll
//
//  Created by Ashish Mankar on 20/07/25.
//

import SwiftUI

struct ContentView: View {
    var baseColor: Color = .brown
    @State var eyesOpenCloseAnimation: CGFloat = 0
    @State var eyesLeftToRight: CGFloat = -4
    
    var body: some View {
        VStack(spacing: 0) {
            LabubuEarsView(baseColor: baseColor)
            VStack(spacing: 0) {
                ZStack {
                    Ellipse()
                        .frame(width: 200, height: 180)
                        .foregroundStyle(baseColor)
                    Ellipse()
                        .frame(width: 150, height: 120)
                        .foregroundStyle(Color.white.opacity(0.3))
                        .padding(.top, 30)
                    LabubuEyeView(baseColor: baseColor, eyesLeftToRight: $eyesLeftToRight, eyesOpenCloseAnimation: $eyesOpenCloseAnimation)
                    LabubuNoseView()
                    TeethView()
                }
            }
            
        }
    }
}

#Preview {
    ContentView()
}








