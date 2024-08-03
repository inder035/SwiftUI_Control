//
//  GeometryReaderView.swift
//  SwiftUIApp
//
//  Created by Inderjeet Singh on 16/07/24.
//

import SwiftUI

struct GeometryReaderView: View {
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("A container view that defines its content as a function of its own size and coordinate space.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    GeometryReader { geometry in
                        HStack(spacing: 0) {
                            Text("Left")
                                .font(.largeTitle)
                                .foregroundStyle(.black)
                                .frame(width: geometry.size.width * 0.30)
                                .background(.yellow)
                            Text("Right")
                                .font(.largeTitle)
                                .foregroundStyle(.black)
                                .frame(width: geometry.size.width * 0.70)
                                .background(.orange)
                        }
                        .clipShape(.rect(cornerRadius: 8))
                    }
                    .frame(height: 40)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/geometryreader")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Geometry Reader")
    }
}

#Preview {
    GeometryReaderView()
}
