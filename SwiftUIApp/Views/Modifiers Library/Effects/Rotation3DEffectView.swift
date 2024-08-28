//
//  Rotation3DEffectView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 20/07/24.
//

import SwiftUI

struct Rotation3DEffectView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Renders a view’s content as if it’s rotated in three dimensions around the specified axis.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Text("EPISODE LLVM")
                        .font(.largeTitle)
                        .foregroundStyle(.yellow)
                        .rotation3DEffect(.degrees(45), axis: (x: 1, y: 0, z: 0))
                    
                    Text("Rotation by passing an angle in degrees")
                        .rotation3DEffect(
                            .degrees(45),
                            axis: (x: 0.0, y: 1.0, z: 0.0),
                            anchor: .center,
                            anchorZ: 0,
                            perspective: 1)
                        .border(Color.gray)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/rotation3deffect(_:axis:anchor:anchorz:perspective:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Rotation 3D Effect")
    }
}

#Preview {
    Rotation3DEffectView()
}
