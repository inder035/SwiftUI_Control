//
//  PresentationDetentsView.swift
//  SwiftUIApp
//
//  Created by Tarun Mehta on 04/08/24.
//

import SwiftUI

struct PresentationDetentsView: View {
    @State private var showSettings = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Sets the available detents for the enclosing sheet.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                
                VStack {
                    Button("View Settings") {
                        showSettings = true
                    }
                    .sheet(isPresented: $showSettings) {
                        PaddingView()
                            .presentationDetents([.medium, .large])
                    }
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/presentationdetents(_:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Presentation Detents")
    }
}

#Preview {
    PresentationDetentsView()
}
