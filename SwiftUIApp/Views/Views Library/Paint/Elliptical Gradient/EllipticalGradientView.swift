//
//  EllipticalGradientView.swift
//  SwiftUIApp
//
//  Created by Inderjeet Singh on 16/07/24.
//

import SwiftUI

struct EllipticalGradientView: View {
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("The gradient maps its coordinate space to the unit space square in which its center and radii are defined, then stretches that square to fill its bounding rect, possibly also stretching the circular gradient to have elliptical contours.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                //LinearGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple]), startPoint: .top, endPoint: .bottom)
                
                VStack {
                    Rectangle()
                        .fill(EllipticalGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple]), center: .center, startRadiusFraction: 0.1, endRadiusFraction: 0.6))
                        .frame(height: 200)
                        .clipShape(.rect(cornerRadius: 8))
                }
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/ellipticalgradient")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Elliptical Gradient")
    }
}

#Preview {
    EllipticalGradientView()
}
