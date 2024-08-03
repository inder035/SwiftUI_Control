//
//  LazyHorizontalStackView.swift
//  SwiftUIApp
//
//  Created by Inderjeet Singh on 16/07/24.
//

import SwiftUI

struct LazyHorizontalStackView: View {
    
    var names: [String] = ["heart.fill", "star.fill", "circle.hexagongrid.fill", "leaf.fill", "sun.max.fill", "ladybug.fill", "moon.fill", "sparkles", "snowflake"]
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("A view that arranges its children in a line that grows horizontally, creating items only as needed.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    ScrollView(.horizontal) {
                        LazyHStack(alignment: .top, spacing: 10) {
                            ForEach(self.names, id: \.self) {
                                
                                Image(systemName: $0)
                                    .renderingMode(.original)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 60, height: 60, alignment: .center)
                                    .padding()
                                    .background(LinearGradient(colors: [.pink.opacity(0.5),.purple.opacity(0.7)], startPoint: .top, endPoint: .bottom))
                                    .clipShape(.rect(cornerRadius: 8))
                            }
                            
                        }
                    }
                    .scrollIndicators(.hidden)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/lazyhstack")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Lazy Horizontal Stack")
    }
}

#Preview {
    LazyHorizontalStackView()
}
