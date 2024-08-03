//
//  LuminanceAlphaView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 20/07/24.
//

import SwiftUI

struct LuminanceAlphaView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Adds a luminance to alpha effect to this view.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Palette()
                        .border(Color.black)
                    
                    
                    Palette()
                        .luminanceToAlpha()
                        .border(Color.black)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/luminancetoalpha()")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Luminance Alpha")
    }
}

struct Palette: View {
    var body: some View {
        HStack(spacing: 0) {
            ForEach(0..<10) { index in
                Color(white: Double(index) / Double(9))
                    .frame(width: 20, height: 40)
            }
        }
    }
}

#Preview {
    LuminanceAlphaView()
}
