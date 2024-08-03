//
//  GrayscaleView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 20/07/24.
//

import SwiftUI

struct GrayscaleView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Adds a grayscale effect to this view.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    ForEach(0..<6) {
                        Color.red.frame(width: 80, height: 80, alignment: .center)
                            .grayscale(Double($0) * 0.1999)
                            .overlay(Text("\(Double($0) * 0.1999 * 100, specifier: "%.3f")%"),
                                     alignment: .bottom)
                            .border(Color.gray)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/grayscale(_:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Grayscale")
    }
}

#Preview {
    GrayscaleView()
}
