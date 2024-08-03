//
//  DrawingGroupView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 20/07/24.
//

import SwiftUI

struct DrawingGroupView: View {
    var amount = 0.0
    let steps = 100
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Composites this view’s contents into an offscreen image before final display.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    ZStack {
                        ForEach(0..<steps, id: \.self) { value in
                            Circle()
                                .inset(by: CGFloat(value))
                                .strokeBorder(LinearGradient(gradient: Gradient(colors: [
                                    self.color(for: value, brightness: 1),
                                    self.color(for: value, brightness: 0.5)
                                ]), startPoint: .top, endPoint: .bottom), lineWidth: 2)
                        }
                        
                    }
                    .frame(width: 200, height: 200)
                    .drawingGroup()
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/drawinggroup(opaque:colormode:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Drawing Group")
    }
    
    func color(for value: Int, brightness: Double) -> Color {
        var targetHue = Double(value) / Double(self.steps) + self.amount
        if targetHue > 1 {
            targetHue -= 1
        }
        return Color(hue: targetHue, saturation: 1, brightness: brightness)
    }
}

#Preview {
    DrawingGroupView()
}
