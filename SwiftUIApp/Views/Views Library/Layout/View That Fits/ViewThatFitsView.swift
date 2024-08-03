//
//  ViewThatFitsView.swift
//  SwiftUIApp
//
//  Created by Inderjeet Singh on 16/07/24.
//

import SwiftUI

struct ViewThatFitsView: View {
    @State var width: CGFloat = 100
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("A view that adapts to the available space by providing the first child view that fits.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    ViewThatFits {
                        Label("Welcome to AwesomeApp", systemImage: "bolt.shield")
                            .font(.largeTitle)

                        Label("Welcome", systemImage: "bolt.shield")
                            .font(.largeTitle)

                        Label("Welcome", systemImage: "bolt.shield")
                    }
                    
                    VStack {
                                Slider(value: $width, in: 30 ... 300)
                                    .padding()
                                ViewThatFits {
                                    Text("Fatbobman's Swift Weekly")
                                    Text("Fatbobman's Weekly")
                                    Text("Fat's Weekly")
                                    Text("Weekly")
                                        .fixedSize()
                                }
                                .frame(width: width)
                                .border(.red)
                            }
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/viewthatfits")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .animation(.easeInOut, value: width)
            .padding(.horizontal)
        }
        .navigationTitle("View That Fits")
    }
}

#Preview {
    ViewThatFitsView()
}
