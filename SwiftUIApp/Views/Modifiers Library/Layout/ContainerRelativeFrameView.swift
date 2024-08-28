//
//  ContainerRelativeFrameView.swift
//  SwiftUIApp
//
//  Created by Tarun Mehta on 04/08/24.
//

import SwiftUI

struct ContainerRelativeFrameView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Positions this view within an invisible frame with a size relative to the nearest container.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                
                VStack {
                    Rectangle()
                        .fill(.purple)
                        .aspectRatio(1.0, contentMode: .fill)
                        .containerRelativeFrame(
                            .horizontal, alignment: .topLeading
                        ) { length, axis in
                            if axis == .horizontal {
                                return length / 3.0
                            } else {
                                return length / 5.0
                            }
                        }
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/containerrelativeframe(_:alignment:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Container Relative Frame")
    }
}

#Preview {
    ContainerRelativeFrameView()
}
