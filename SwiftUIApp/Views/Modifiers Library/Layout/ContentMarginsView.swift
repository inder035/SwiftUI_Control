//
//  ContentMarginsView.swift
//  SwiftUIApp
//
//  Created by Tarun Mehta on 04/08/24.
//

import SwiftUI

struct ContentMarginsView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Configures the content margin for a provided placement.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                
                VStack {
                    VStack {
                        ForEach(0..<20) { i in
                            Text("Item \(i)")
                                .frame(maxWidth: .infinity)
                                .foregroundStyle(.white)
                                .padding()
                                .background(.blue)
                                .clipShape(.rect(cornerRadius: 8))
                        }
                    }
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/contentmargins(_:for:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Content Margins")
        .contentMargins(20, for: .scrollContent)
    }
}

#Preview {
    ContentMarginsView()
}
