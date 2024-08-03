//
//  LazyHorizontalGridView.swift
//  SwiftUIApp
//
//  Created by Inderjeet Singh on 16/07/24.
//

import SwiftUI

struct LazyHorizontalGridView: View {
    
    var names: [String] = ["heart.fill", "star.fill", "circle.hexagongrid.fill", "leaf.fill", "sun.max.fill", "ladybug.fill", "moon.fill", "sparkles", "snowflake"]
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("A container view that arranges its child views in a grid that grows horizontally, creating items only as needed.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    ScrollView(.horizontal) {
                        LazyHGrid(rows: [GridItem(.flexible())], spacing: 10) {
                            ForEach(names[0..<names.count], id: \.self) {name in
                                ZStack{
                                    LinearGradient(colors: [.pink.opacity(0.5),.purple.opacity(0.7)], startPoint: .top, endPoint: .bottom)
                                        .frame(width: 90, height: 90, alignment: .center)
                                        .clipShape(RoundedRectangle(cornerRadius: 25))
                                    Image(systemName: name)
                                        .renderingMode(.original)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 60, height: 60, alignment: .center)
                                }
                            }
                        } .fixedSize()
                            .padding()
                    }
                    .scrollIndicators(.hidden)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/lazyhgrid")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Lazy Horizontal Grid")
    }
}

#Preview {
    LazyHorizontalGridView()
}
