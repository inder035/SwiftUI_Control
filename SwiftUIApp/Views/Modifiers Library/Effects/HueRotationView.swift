//
//  HueRotationView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 20/07/24.
//

import SwiftUI

struct HueRotationView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Applies a hue rotation effect to this view.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    ForEach(0..<20, id: \.self) { _ in
                        RoundedRectangle(cornerRadius: 25, style: .continuous)
                            .fill(.tint)
                            .frame(height: 100)
                            .visualEffect { content, proxy in
                                content
                                    .rotationEffect(.degrees(proxy.frame(in: .global).origin.y / 60))
                                    .hueRotation(.degrees(proxy.frame(in: .global).origin.y / 8))
                            }
                    }
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/huerotation(_:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Hue Rotation")
    }
}

#Preview {
    HueRotationView()
}
