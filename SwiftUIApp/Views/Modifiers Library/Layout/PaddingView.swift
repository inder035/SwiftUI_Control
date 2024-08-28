//
//  PaddingView.swift
//  SwiftUIApp
//
//  Created by Tarun Mehta on 04/08/24.
//

import SwiftUI

struct PaddingView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Adds an equal padding amount to specific edges of this view")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    VStack {
                        Text("Text with default padding.")
                            .padding()
                            .border(.gray)
                        Text("Unpadded text for comparison.")
                            .border(.yellow)
                            .border(.gray)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/padding(_:_:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Padding")
    }
}

#Preview {
    PaddingView()
}
