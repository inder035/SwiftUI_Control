//
//  ScrollContentBackgroundView.swift
//  SwiftUIApp
//
//  Created by Tarun Mehta on 04/08/24.
//

import SwiftUI

struct ScrollContentBackgroundView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Specifies the visibility of the background for scrollable views within this view.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    ForEach(0..<10) {
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
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/scrollcontentbackground(_:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .background(Color.red.opacity(0.2))
        .scrollContentBackground(.hidden)
        .navigationTitle("Scroll Content Background")
    }
}

#Preview {
    ScrollContentBackgroundView()
}
