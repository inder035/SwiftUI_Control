//
//  ControlGroupView.swift
//  SwiftUIApp
//
//  Created by Inderjeet Singh on 16/07/24.
//

import SwiftUI

struct ControlGroupView: View {
    
    @State private var count = 0
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("A container view that displays semantically-related controls in a visually-appropriate manner for the context")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text("Count : \(count)")
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding()
                    .background(.blue.opacity(0.1))
                    .clipShape(.rect(cornerRadius: 8))
                
                VStack {
                    ControlGroup {
                        Button(action: {
                            count = count - 1
                        }) {
                            Label("Decrease", systemImage: "minus")
                        }
                        
                        Button(action: {
                            count = count + 1
                        }) {
                            Label("Increase", systemImage: "plus")
                        }
                    }
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
        .navigationTitle("Control Group")
    }
}

#Preview {
    ControlGroupView()
}
