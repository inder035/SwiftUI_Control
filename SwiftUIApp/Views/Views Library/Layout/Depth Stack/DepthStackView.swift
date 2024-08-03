//
//  DepthStackView.swift
//  SwiftUIApp
//
//  Created by Inderjeet Singh on 16/07/24.
//

import SwiftUI

struct DepthStackView: View {
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("A view that overlays its subviews, aligning them in both axes.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    VStack {
                        Text("ZStack")
                          .font(.title)

                        Text("Layering & Alignment")
                          .font(.subheadline)

                        ZStack {
                          Circle()
                            .fill(.blue)
                            .frame(width: 200, height: 200)

                          Capsule()
                            .fill(Color.white.opacity(0.5))
                            .frame(width: 150, height: 50)

                          Text("SwiftUI")
                            .foregroundColor(.white)
                        }
                      }
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/zstack")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Depth Stack")
    }
}

#Preview {
    DepthStackView()
}
