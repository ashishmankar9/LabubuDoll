//
//  TeethView.swift
//  Labubu Doll
//
//  Created by Ashish Mankar on 20/07/25.
//
import SwiftUI

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
