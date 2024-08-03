//
//  ColorMultiplyView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 20/07/24.
//

import SwiftUI

struct ColorMultiplyView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Adds a color multiplication effect to this view.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    HStack {
                        Color.red.frame(width: 100, height: 100, alignment: .center)
                            .overlay(InnerCircleView(), alignment: .center)
                            .overlay(Text("Normal")
                                .font(.callout),
                                     alignment: .bottom)
                            .border(Color.gray)
                        
                        
                        Spacer()
                        
                        
                        Color.red.frame(width: 100, height: 100, alignment: .center)
                            .overlay(InnerCircleView(), alignment: .center)
                            .colorMultiply(Color.pink)
                            .overlay(Text("Multiply")
                                .font(.callout),
                                     alignment: .bottom)
                            .border(Color.gray)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/colormultiply(_:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Color Multiply")
    }
}

struct InnerCircleView: View {
    var body: some View {
        Circle()
            .fill(Color.green)
            .frame(width: 40, height: 40, alignment: .center)
    }
}

#Preview {
    ColorMultiplyView()
}
