//
//  BlendModeView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 20/07/24.
//

import SwiftUI

struct BlendModeView: View {
    @State private var amount = 0.5
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Sets the blend mode for compositing this view with overlapping views.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    ZStack {
                        Circle()
                            .fill(.red)
                            .frame(width: 200 * amount)
                            .offset(x: -50, y: -40)
                            .blendMode(.screen)
                        
                        Circle()
                            .fill(.green)
                            .frame(width: 200 * amount)
                            .offset(x: 50, y: -40)
                            .blendMode(.screen)
                        
                        Circle()
                            .fill(.blue)
                            .frame(width: 200 * amount)
                            .blendMode(.screen)
                    }
                    .frame(width: 300, height: 300)
                    
                    Slider(value: $amount)
                        .padding()
                    
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/blendmode(_:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Blend Mode")
    }
}

#Preview {
    BlendModeView()
}
