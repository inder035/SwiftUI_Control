//
//  SpacerView.swift
//  SwiftUIApp
//
//  Created by Inderjeet Singh on 16/07/24.
//

import SwiftUI

struct SpacerView: View {
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("A flexible space that expands along the major axis of its containing stack layout, or on both axes if not contained in a stack.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Text("First Label")
                    Spacer(minLength: 100)
                    Text("Second Label")
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                HStack {
                    Text("First Label")
                    Spacer()
                    Text("Second Label")
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/spacer")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Spacer")
    }
}

#Preview {
    SpacerView()
}
