//
//  LabubuEarsView.swift
//  Labubu Doll
//
//  Created by Ashish Mankar on 20/07/25.
//
import SwiftUI

struct LabubuEarsView: View {
    var baseColor: Color = .brown
    
    var body: some View {
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
    }
}
