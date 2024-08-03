//
//  RectangleView.swift
//  SwiftUIApp
//
//  Created by Inderjeet Singh on 17/07/24.
//

import SwiftUI

struct RectangleView: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("A rectangular shape aligned inside the frame of the view containing it.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Rectangle()
                        .fill(.red)
                        .frame(width: 200, height: 200)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/rectangle")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.vertical)
            }
            .padding(.horizontal)
            
        }
        .navigationTitle("Rectangle")
    }
}

#Preview {
    RectangleView()
}
