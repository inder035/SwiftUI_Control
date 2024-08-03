//
//  VerticalStackView.swift
//  SwiftUIApp
//
//  Created by Inderjeet Singh on 16/07/24.
//

import SwiftUI

struct VerticalStackView: View {
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("A view that arranges its subviews in a vertical line.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    VStack( alignment: .leading, spacing: 10) {
                            ForEach( 1...10, id: \.self ) {
                                Text("Item \($0)")
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .padding()
                                    .background(.blue.opacity(0.1))
                                    .clipShape(.rect(cornerRadius: 8))
                            }
                        }
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/vstack")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Vertical Stack")
    }
}

#Preview {
    VerticalStackView()
}
