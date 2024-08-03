//
//  BadgeView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 20/07/24.
//

import SwiftUI

struct BadgeView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Generates a badge for the view from a text view.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    List {
                        Text("Group 1")
                            .badge(12)
                        
                        Text("Group 2")
                            .badge(20)
                    }
                    .listStyle(.plain)
                    .clipShape(.rect(cornerRadius: 8))
                    .frame(height: 100)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/badge(_:)-6k2u9")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Badge")
    }
}

#Preview {
    BadgeView()
}
