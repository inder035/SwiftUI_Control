//
//  DividerView.swift
//  SwiftUIApp
//
//  Created by Inderjeet Singh on 17/07/24.
//

import SwiftUI

struct DividerView: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("A visual element that can be used to separate other content.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Divider()
                            .overlay(Color.red)
                            .padding()
                            .background(.blue.opacity(0.1))
                            .clipShape(.rect(cornerRadius: 8))
                    
                    Divider()
                            .overlay(Color.green)
                            .padding()
                            .background(.blue.opacity(0.1))
                            .clipShape(.rect(cornerRadius: 8))
                    
                    Divider()
                            .overlay(Color.blue)
                            .padding()
                            .background(.blue.opacity(0.1))
                            .clipShape(.rect(cornerRadius: 8))
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/divider")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.vertical)
            }
            .padding(.horizontal)
            
        }
        .navigationTitle("Divider")
    }
}

#Preview {
    DividerView()
}
