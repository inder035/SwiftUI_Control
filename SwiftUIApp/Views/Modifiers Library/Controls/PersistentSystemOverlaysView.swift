//
//  PersistentSystemOverlaysView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 20/07/24.
//

import SwiftUI

struct PersistentSystemOverlaysView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Sets the preferred visibility of the non-transient system views overlaying the app.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Text("This needs to take up lots of space")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(.yellow)
                        .persistentSystemOverlays(.hidden)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/controlgroup")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Persistent System Overlays")
    }
}

#Preview {
    PersistentSystemOverlaysView()
}
