//
//  ZIndexView.swift
//  SwiftUIApp
//
//  Created by Tarun Mehta on 04/08/24.
//

import SwiftUI

struct ZIndexView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Controls the display order of overlapping views.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                
                VStack {
                    VStack {
                        Rectangle()
                            .fill(Color.yellow)
                            .frame(width: 100, height: 100, alignment: .center)
                            .zIndex(1)

                        Rectangle()
                            .fill(Color.red)
                            .frame(width: 100, height: 100, alignment: .center)
                            .rotationEffect(.degrees(45))
                    }
                    .padding()
                    
                    ZStack {
                        Rectangle()
                            .fill(.green)
                            .frame(width: 50, height: 50)
                            .zIndex(1)

                        Rectangle()
                            .fill(.red)
                            .frame(width: 100, height: 100)
                    }
                    .padding()
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/zindex(_:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Z Index")
    }
}

#Preview {
    ZIndexView()
}
