//
//  ClippedView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 20/07/24.
//

import SwiftUI

struct ClippedView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Clips this view to its bounding rectangular frame.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Text("This long text string is clipped")
                        .fixedSize()
                        .frame(width: 175, height: 80)
                        .clipped()
                        .border(Color.gray)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/clipped(antialiased:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Clipped")
    }
}

#Preview {
    ClippedView()
}
