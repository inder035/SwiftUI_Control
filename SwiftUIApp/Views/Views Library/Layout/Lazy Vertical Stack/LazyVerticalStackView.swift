//
//  LazyVerticalStackView.swift
//  SwiftUIApp
//
//  Created by Inderjeet Singh on 16/07/24.
//

import SwiftUI

struct LazyVerticalStackView: View {
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("A view that arranges its children in a line that grows vertically, creating items only as needed.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    LazyVStack {
                        ForEach(0..<100) { index in
                            Text("View \(index)")
                                .padding()
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .background(.blue.opacity(0.1))
                                .clipShape(.rect(cornerRadius: 8))
                        }
                    }
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/lazyvstack")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Lazy Vertical Stack")
    }
}

#Preview {
    LazyVerticalStackView()
}
