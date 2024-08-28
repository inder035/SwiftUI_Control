//
//  ScenePaddingView.swift
//  SwiftUIApp
//
//  Created by Tarun Mehta on 04/08/24.
//

import SwiftUI

struct ScenePaddingView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("The padding used to space a view from its containing scene.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                
                VStack {
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Scene padding")
                            .scenePadding(.horizontal)
                            .border(.red) // Border added for reference.
                        Text("Regular padding")
                            .padding(.horizontal)
                            .border(.green)
                        Text("Text with no padding")
                            .border(.blue)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/scenepadding")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Scene Padding")
    }
}

#Preview {
    ScenePaddingView()
}
