//
//  InvertView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 20/07/24.
//

import SwiftUI

struct InvertView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Inverts the colors in this view.")
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
                            .colorInvert()
                            .overlay(Text("Inverted")
                                .font(.callout),
                                     alignment: .bottom)
                            .border(Color.gray)
                    }
                    .padding(50)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/projectiontransform/invert()")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Invert")
    }
}

#Preview {
    InvertView()
}
