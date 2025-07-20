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
            HStack {
                ForEach(0...1, id: \.self) { _ in
                    ZStack {
                        Ellipse()
                            .frame(width: 60, height: 200)
                            .foregroundStyle(baseColor)
                        Ellipse()
                            .frame(width: 30, height: 100)
                            .foregroundStyle(Color.white.opacity(0.3))
                        Ellipse()
                            .frame(width: 15, height: 50)
                            .foregroundStyle(baseColor)
                            .offset(y: 12)
                    }
                }
            }
            .padding()
            .offset(y: 100)
            VStack(spacing: 0) {
                ZStack {
                    Ellipse()
                        .frame(width: 200, height: 180)
                        .foregroundStyle(baseColor)
                    ZStack {
                        Ellipse()
                            .frame(width: 150, height: 120)
                            .foregroundStyle(Color.white.opacity(0.3))
                            .padding(.top, 30)
                        
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
                    ZStack {
                        ZStack {
                            Circle()
                                .frame(height: 1)
                                .offset(x: -4)
                            Circle()
                                .frame(height: 1)
                                .offset(x: 4)
                            Circle()
                                .frame(height: 1)
                                .offset(y: 4)
                        }
                        .rotationEffect(.degrees(180))
                        .offset(y: 16)
                        Ellipse()
                            .foregroundStyle(.red.opacity(0.2))
                            .frame(width: 20, height: 10)
                            .offset(y: 14)
                        RoundedRectangle(cornerRadius: 8)
                            .rotation(.degrees(225))
                            .trim(from: 0.5, to: 0.75)
                            .frame(width: 28, height: 28)
                            .offset(y: 12)
                        Ellipse()
                            .frame(width: 18, height: 6)
                            .offset(y: 22)
                    }
                    TeethView()
                }
            }
            
        }
    }
}

#Preview {
    ContentView()
}

struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()

        path.move(to: CGPoint(x: rect.midX, y: rect.minY))             // Top center
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))         // Bottom right
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))         // Bottom left
        path.closeSubpath()

        return path
    }
}

struct TeethView: View {
    var body: some View {
        Ellipse()
            .frame(width: 150, height: 100)
            .foregroundStyle(.white.opacity(0.1))
            .padding(.top, 30)
            .offset(y: -10)
            .overlay {
                HStack(spacing: -8) {
                    RoundedRectangle(cornerRadius: 8)
                        .rotation(.degrees(280))
                        .trim(from: 0.5, to: 0.75)
                        .fill(Color.white)
                        .frame(width: 20, height: 20)
                        .offset(x: 4, y: 22)
                    RoundedRectangle(cornerRadius: 8)
                        .rotation(.degrees(260))
                        .trim(from: 0.5, to: 0.75)
                        .fill(Color.white)
                        .frame(width: 20, height: 20)
                        .offset(x: 0, y: 30)
                    RoundedRectangle(cornerRadius: 8)
                        .rotation(.degrees(260))
                        .trim(from: 0.5, to: 0.75)
                        .fill(Color.white)
                        .frame(width: 22, height: 22)
                        .offset(x: 0, y: 38)
                    RoundedRectangle(cornerRadius: 8)
                        .rotation(.degrees(240))
                        .trim(from: 0.5, to: 0.75)
                        .fill(Color.white)
                        .frame(width: 24, height: 24)
                        .offset(x: -4, y: 42)
                    RoundedRectangle(cornerRadius: 8)
                        .rotation(.degrees(230))
                        .trim(from: 0.5, to: 0.75)
                        .fill(Color.white)
                        .frame(width: 28, height: 28)
                        .offset(x: -6, y: 44)
                    RoundedRectangle(cornerRadius: 8)
                        .rotation(.degrees(220))
                        .trim(from: 0.5, to: 0.75)
                        .fill(Color.white)
                        .frame(width: 28, height: 28)
                        .offset(x: -8, y: 44)
                    RoundedRectangle(cornerRadius: 8)
                        .rotation(.degrees(210))
                        .trim(from: 0.5, to: 0.75)
                        .fill(Color.white)
                        .frame(width: 26, height: 26)
                        .offset(x: -8, y: 42)
                    RoundedRectangle(cornerRadius: 8)
                        .rotation(.degrees(200))
                        .trim(from: 0.5, to: 0.75)
                        .fill(Color.white)
                        .frame(width: 24, height: 24)
                        .offset(x: -8, y: 36)
                    RoundedRectangle(cornerRadius: 8)
                        .rotation(.degrees(188))
                        .trim(from: 0.5, to: 0.75)
                        .fill(Color.white)
                        .frame(width: 20, height: 20)
                        .offset(x: -10, y: 30)
                    RoundedRectangle(cornerRadius: 8)
                        .rotation(.degrees(180))
                        .trim(from: 0.5, to: 0.75)
                        .fill(Color.white)
                        .frame(width: 20, height: 20)
                        .offset(x: -12, y: 22)
                }
                .offset(x: 4)
            }
    }
}
