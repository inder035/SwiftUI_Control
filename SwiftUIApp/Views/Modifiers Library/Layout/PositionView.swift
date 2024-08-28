//
//  PositionView.swift
//  SwiftUIApp
//
//  Created by Tarun Mehta on 04/08/24.
//

import SwiftUI

struct PositionView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Positions the center of this view at the specified coordinates in its parent’s coordinate space.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                
                VStack {
                    Text("Hello, world!")
                        .position(x: 100, y: 100)
                        .background(.red)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/position(x:y:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Position")
    }
}

#Preview {
    PositionView()
}
