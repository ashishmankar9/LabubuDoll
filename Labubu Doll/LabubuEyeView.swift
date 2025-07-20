//
//  LabubuEyeView.swift
//  Labubu Doll
//
//  Created by Ashish Mankar on 20/07/25.
//
import SwiftUI

struct LabubuEyeView: View {
    var baseColor: Color = .brown
    @Binding var eyesLeftToRight: CGFloat
    @Binding var eyesOpenCloseAnimation: CGFloat
    var body: some View {
        HStack(spacing: 32) {
            ForEach(0...1, id: \.self) { _ in
                ZStack {
                    Ellipse()
                        .frame(width: 30, height: 48)
                        .foregroundStyle(Color.white)
                    ZStack {
                        Ellipse()
                            .frame(width: 18, height: 32)
                            .foregroundStyle(Color.black)
                            .offset(y: 4)
                        Circle()
                            .frame(width: 8)
                            .foregroundStyle(.white
                            )
                            .offset(x: 2)
                        Circle()
                            .frame(width: 4)
                            .foregroundStyle(.white
                            )
                            .offset(x: -2,y: 6)
                    }
                    .offset(x: eyesLeftToRight)
                }
                .overlay {
                    Ellipse()
                        .frame(width: 30, height: 48)
                        .foregroundStyle(baseColor)
                        .offset(y: eyesOpenCloseAnimation)
                }
                .clipShape(Ellipse())
            }
        }
        .padding(.top, 20)
        .onAppear {
            withAnimation(.linear(duration: 1.2).delay(0.5).repeatForever()) {
                eyesOpenCloseAnimation = -120
            }
            
            withAnimation(.linear(duration: 2).repeatForever()) {
                eyesLeftToRight = 4
            }
        }
        HStack(spacing: 32) {
            ForEach(0...1, id: \.self) { _ in
                Ellipse()
                    .frame(width: 30, height: 20)
                    .foregroundStyle(Color.white.opacity(0.1))
                    
            }
        }
        .offset(y: -22)
    }
}
