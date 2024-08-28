//
//  FrameView.swift
//  SwiftUIApp
//
//  Created by Tarun Mehta on 04/08/24.
//

import SwiftUI

struct FrameView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Positions this view within an invisible frame with the specified size.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Text("Please log in")
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                        .padding()
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .background(.red)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/frame(width:height:alignment:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Frame")
    }
}

#Preview {
    FrameView()
}
