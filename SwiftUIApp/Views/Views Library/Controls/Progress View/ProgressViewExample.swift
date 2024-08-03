//
//  ProgressViewExample.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 14/07/24.
//

import SwiftUI

struct ProgressViewExample: View {
    @State private var progress = 0.8
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("A view that shows the progress toward completion of a task.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Text("Circular Progress")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.title3).bold()
                    
                    ProgressView {
                        Text("Loading")
                            .bold()
                    }
                    .progressViewStyle(.circular)
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .center)
                    .background(.blue.opacity(0.1))
                    .clipShape(.rect(cornerRadius: 8))
                }
                
                VStack {
                    Text("Linear Progress")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.title3).bold()
                    
                    ProgressView(value: progress) {
                        Text("Loading")
                    } currentValueLabel: {
                        Text("Current Value Label: \(Int(progress*100))")
                    }
                    .progressViewStyle(.linear)
                    .padding()
                    .background(.blue.opacity(0.1))
                    .clipShape(.rect(cornerRadius: 8))
                }
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/progressview")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Progress View")
    }
}

#Preview {
    ProgressViewExample()
}
