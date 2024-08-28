//
//  OverlayView.swift
//  SwiftUIApp
//
//  Created by Tarun Mehta on 04/08/24.
//

import SwiftUI

struct OverlayView: View {
    
    private var starOverlay: some View {
        Image(systemName: "star")
            .foregroundColor(.white)
            .padding([.top, .trailing], 12)
    }
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Layers a secondary view in front of this view.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                
                VStack {
                    Text("SwiftUI")
                        .foregroundColor(.white)
                        .font(.title)
                        .padding(35)
                        .background(
                            LinearGradient(
                                colors: [.orange, .red],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                        )
                        .overlay(starOverlay, alignment: .topTrailing)
                        .cornerRadius(16)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/overlay(_:alignment:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Overlay")
    }
}

#Preview {
    OverlayView()
}
