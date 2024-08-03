//
//  RadialGradientView.swift
//  SwiftUIApp
//
//  Created by Inderjeet Singh on 16/07/24.
//

import SwiftUI

struct RadialGradientView: View {
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("The gradient applies the color function as the distance from a center point, scaled to fit within the defined start and end radii. The gradient maps the unit space center point into the bounding rectangle of each shape filled with the gradient.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Circle()
                        .fill(RadialGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple]), center: .center, startRadius: 20, endRadius: 100))
                        .frame(height: 200)
                        .clipShape(.rect(cornerRadius: 8))
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/radialgradient")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Radial Gradient")
    }
}

#Preview {
    RadialGradientView()
}
