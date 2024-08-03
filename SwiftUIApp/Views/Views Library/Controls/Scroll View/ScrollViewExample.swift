//
//  ScrollViewExample.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 15/07/24.
//

import SwiftUI

struct ScrollViewExample: View {
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("A scrollable view.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack(spacing: 8){
                    ScrollView(.horizontal) {
                        HStack(spacing: 8) {
                            ForEach(0..<10) {
                                Text("Item \($0)")
                                    .foregroundStyle(.white)
                                    .frame(width: 100, height: 100)
                                    .background(.blue.opacity(0.8))
                                    .clipShape(.rect(cornerRadius: 8))
                            }
                        }
                    }
                    .scrollIndicators(.hidden)
                    
                    ForEach(0..<10) {
                        Text("Item \($0)")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                            .foregroundStyle(.white)
                            .background(.blue.opacity(0.5))
                            .clipShape(.rect(cornerRadius: 8))
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/scrollview")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("ScrollView")
    }
}

#Preview {
    ScrollViewExample()
}
