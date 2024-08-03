//
//  HoverEffectView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 20/07/24.
//

import SwiftUI

struct HoverEffectView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("An effect applied when the pointer hovers over a view.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Text("Hover Effect")
                        .hoverEffect(.lift)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/hovereffect")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Hover Effect")
    }
}

#Preview {
    HoverEffectView()
}
