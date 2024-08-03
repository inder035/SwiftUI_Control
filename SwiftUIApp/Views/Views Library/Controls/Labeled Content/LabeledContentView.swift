//
//  LabeledContentView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 13/07/24.
//

import SwiftUI

struct LabeledContentView: View {
    @State private var brightness = 0.5
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("A container for attaching a label to a value-bearing view.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    LabeledContent("iOS Version", value: "17.2.1")
                }
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                VStack {
                    LabeledContent("Battery") {
                        Image(systemName: "checkmark.circle")
                    }
                }
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                VStack {
                    LabeledContent {
                        Slider(value: $brightness)
                    } label: {
                        Text("Brightness")
                    }
                }
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/labeledcontent")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Labeled Content")
    }
}

#Preview {
    LabeledContentView()
}
