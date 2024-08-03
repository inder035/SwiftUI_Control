//
//  BlurView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 20/07/24.
//

import SwiftUI

struct BlurView: View {
    @State private var blurAmount = 0.0
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Applies a Gaussian blur to this view.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Text("Drag the slider to blur me")
                        .blur(radius: blurAmount)
                    
                    Slider(value: $blurAmount, in: 0...20)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/blur(radius:opaque:)?changes=_2#")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Blur")
    }
}

#Preview {
    BlurView()
}
