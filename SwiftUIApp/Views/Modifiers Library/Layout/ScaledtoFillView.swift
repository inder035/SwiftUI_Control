//
//  ScaledtoFillView.swift
//  SwiftUIApp
//
//  Created by Tarun Mehta on 04/08/24.
//

import SwiftUI

struct ScaledtoFillView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Scales this view to fill its parent.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Circle()
                        .fill(Color.pink)
                        .scaledToFill()
                        .frame(width: 300, height: 150)
                        .border(Color(white: 0.75))
                }
                .frame(height: 340)
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/scaledtofill()")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Text")
    }
}

#Preview {
    ScaledtoFillView()
}
