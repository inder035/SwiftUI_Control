//
//  RotationEffectView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 20/07/24.
//

import SwiftUI

struct RotationEffectView: View {
    @State private var rotation = 0.0
    @State private var isTap = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Rotates a view’s rendered output in two dimensions around the specified point.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Slider(value: $rotation, in: 0...360)
                    Text("Up we go")
                        .rotationEffect(.degrees(rotation))
                        .padding()
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                VStack {
                    Image(systemName: "hand.point.down.fill")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .rotationEffect(.degrees(isTap ? -90 : 0))
                        .animation(.easeInOut(duration: 0.3), value: isTap)
                        .onTapGesture {
                            isTap.toggle()
                        }
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/rotationeffect(_:anchor:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Rotation Effect")
    }
}

#Preview {
    RotationEffectView()
}
