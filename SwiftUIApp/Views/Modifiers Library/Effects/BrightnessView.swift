//
//  BrightnessView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 20/07/24.
//

import SwiftUI

struct BrightnessView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Brightens this view by the specified amount.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    VStack {
                        ForEach(0..<6) {
                            Color.red.frame(width: 60, height: 60, alignment: .center)
                                .brightness(Double($0) * 0.2)
                                .overlay(Text("\(Double($0) * 0.2 * 100, specifier: "%.0f")%"),
                                         alignment: .bottom)
                                .border(Color.gray)
                        }
                    }
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/brightness(_:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Brightness")
    }
}

#Preview {
    BrightnessView()
}
