//
//  TextView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 15/07/24.
//

import SwiftUI

struct TextView: View {
    
    let attributedString = try! AttributedString(
        markdown: "_Hamlet_ by William Shakespeare")
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("A view that displays one or more lines of read-only text.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Text("This is an extremely long text string that will never fit even the widest of phones without wrapping")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                VStack {
                    Text("The best laid plans")
                        .foregroundStyle(.red)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                VStack {
                    Text("The best laid plans")
                        .foregroundStyle(.blue.gradient)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                VStack {
                    Text(attributedString)
                            .font(.system(size: 12, weight: .light, design: .serif))
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/text")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Text")
    }
}

#Preview {
    TextView()
}
