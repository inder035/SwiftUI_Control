//
//  ProjectionView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 20/07/24.
//

import SwiftUI

struct ProjectionView: View {
    let transform = CATransform3DMakeRotation(-30 * (.pi / 180), 0.0, 0.0, 1.0)
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Applies a projection transformation to this view’s rendered output.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Text("Projection effects using transforms")
                        .projectionEffect(.init(transform))
                        .border(Color.gray)
                }
                .frame(height: 400)
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/projectioneffect(_:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Projection")
    }
}

#Preview {
    ProjectionView()
}
