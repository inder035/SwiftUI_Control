//
//  ClipShapeView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 20/07/24.
//

import SwiftUI

struct ClipShapeView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Sets a clipping shape for this view.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Image(systemName: "bolt.fill")
                        .foregroundStyle(.white)
                        .padding()
                        .background(.green)
                        .clipShape(Circle())
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/clipshape(_:style:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Clip Shape")
    }
}

#Preview {
    ClipShapeView()
}
