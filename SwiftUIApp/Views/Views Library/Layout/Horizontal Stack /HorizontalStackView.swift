//
//  HorizontalStackView.swift
//  SwiftUIApp
//
//  Created by Inderjeet Singh on 16/07/24.
//

import SwiftUI

struct HorizontalStackView: View {
    
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("A view that arranges its subviews in a horizontal line.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    HStack {
                        Text("SwiftUI")
                            .padding()
                            .background(Color.blue)
                            .clipShape(.rect(cornerRadius: 8))
                        Text("Rocks")
                            .padding()
                            .background(Color.red)
                            .clipShape(.rect(cornerRadius: 8))
                    }
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/hstack")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Horizontal Stack")
    }
}

#Preview {
    HorizontalStackView()
}
