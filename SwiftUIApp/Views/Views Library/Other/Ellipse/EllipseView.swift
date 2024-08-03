//
//  EllipseView.swift
//  SwiftUIApp
//
//  Created by Inderjeet Singh on 17/07/24.
//

import SwiftUI

struct EllipseView: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("An ellipse aligned inside the frame of the view containing it.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Ellipse()
                                    .fill(.blue)
                                    .frame(width: 100, height: 50)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/ellipse")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.vertical)
            }
            .padding(.horizontal)
            
        }
        .navigationTitle("Ellipse")
    }
}

#Preview {
    EllipseView()
}
