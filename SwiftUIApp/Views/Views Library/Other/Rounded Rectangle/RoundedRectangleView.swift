//
//  RoundedRectangleView.swift
//  SwiftUIApp
//
//  Created by Inderjeet Singh on 17/07/24.
//

import SwiftUI

struct RoundedRectangleView: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("A rectangular shape with rounded corners, aligned inside the frame of the view containing it.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.red)
                        .frame(width: 200, height: 200)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/roundedrectangle")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.vertical)
            }
            .padding(.horizontal)
            
        }
        .navigationTitle("Rounded Rectangle")
    }
}

#Preview {
    RoundedRectangleView()
}
