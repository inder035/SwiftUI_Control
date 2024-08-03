//
//  ColorView.swift
//  SwiftUIApp
//
//  Created by Inderjeet Singh on 17/07/24.
//

import SwiftUI

struct ColorView: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("A representation of a color that adapts to a given context.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Text("Hello")
                        .padding()
                      .foregroundColor(Color.red)
                    
                    Text("Hello")
                        .padding()
                        .foregroundColor(Color.red)
                        .background(Color.blue.opacity(0.5))
                        .background(.blue.opacity(0.1))
                        .clipShape(.rect(cornerRadius: 8))
                    
                    Text("Hello")
                        .padding()
                        .foregroundColor(Color(red: 0.5, green:  0.9, blue:  0.1))
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/asyncimage")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.vertical)
            }
            .padding(.horizontal)
            
        }
        .navigationTitle("Color")
    }
}

#Preview {
    ColorView()
}
