//
//  CircleView.swift
//  SwiftUIApp
//
//  Created by Inderjeet Singh on 17/07/24.
//

import SwiftUI

struct CircleView: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("A circle centered on the frame of the view containing it.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Circle()
                        .fill(.blue)
                        .frame(width: 100, height: 100)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/circle")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.vertical)
            }
            .padding(.horizontal)
            
        }
        .navigationTitle("Circle")
    }
}

#Preview {
    CircleView()
}
