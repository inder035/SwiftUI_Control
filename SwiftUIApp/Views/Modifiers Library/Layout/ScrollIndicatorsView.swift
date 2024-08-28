//
//  ScrollIndicatorsView.swift
//  SwiftUIApp
//
//  Created by Tarun Mehta on 04/08/24.
//

import SwiftUI

struct ScrollIndicatorsView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("The visibility of scroll indicators of a UI element.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    ForEach(0..<20) {
                        Text("Item \($0)")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                            .foregroundStyle(.white)
                            .background(.blue.opacity(0.5))
                            .clipShape(.rect(cornerRadius: 8))
                    }
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/scrollindicatorvisibility")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .scrollIndicators(.hidden)
        .navigationTitle("Scroll Indicators")
    }
}

#Preview {
    ScrollIndicatorsView()
}
