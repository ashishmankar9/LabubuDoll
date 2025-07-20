//
//  LabubuNoseView.swift
//  Labubu Doll
//
//  Created by Ashish Mankar on 20/07/25.
//
import SwiftUI

struct LabubuNoseView: View {
    var body: some View {
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
    }
}
