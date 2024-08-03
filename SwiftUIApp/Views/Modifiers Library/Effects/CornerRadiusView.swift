//
//  CornerRadiusView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 20/07/24.
//

import SwiftUI

struct CornerRadiusView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                VStack {
                    Text("Deprecated")
                        .foregroundColor(.red)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("Clips this view to its bounding frame, with the specified corner radius.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                
                VStack {
                    Text("Round Me")
                        .padding()
                        .background(.blue.opacity(0.3))
                        .cornerRadius(8)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/familycontrols/familyactivityiconview/cornerradius(_:antialiased:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Corner Radius")
    }
}

#Preview {
    CornerRadiusView()
}
