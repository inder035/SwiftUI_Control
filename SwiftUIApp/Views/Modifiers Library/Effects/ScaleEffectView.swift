//
//  ScaleEffectView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 20/07/24.
//

import SwiftUI

struct ScaleEffectView: View {
    @State private var scale = 1.0
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Scales this view’s rendered output by the given vertical and horizontal size amounts, relative to an anchor point.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Text("Up we go")
                        .scaleEffect(x: 1, y: 5)
                        .frame(height: 100)
                    
                    Image(systemName: "envelope.badge.fill")
                        .resizable()
                        .frame(width: 100, height: 100, alignment: .center)
                        .foregroundColor(Color.red)
                        .scaleEffect(CGSize(width: 0.9, height: 1.3), anchor: .leading)
                        .border(Color.gray)
                        .padding()
                    
                    Button("Press here") {
                        scale += 1
                    }
                    .scaleEffect(scale)
                    .animation(.easeIn, value: scale)
                    .padding()
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/scaleeffect(_:anchor:)-7q7as")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Scale Effect")
    }
}

#Preview {
    ScaleEffectView()
}
