//
//  OpacityView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 20/07/24.
//

import SwiftUI

struct OpacityView: View {
    @State private var opacity = 0.5
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Sets the transparency of this view.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    VStack {
                        Text("Now you see me")
                            .padding()
                            .background(.blue)
                            .opacity(opacity)
                            .clipShape(.rect(cornerRadius: 8))
                        
                        Slider(value: $opacity, in: 0...1)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/opacity(_:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Opacity")
    }
}

#Preview {
    OpacityView()
}
