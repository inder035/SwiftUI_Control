//
//  ScrollViewReaderView.swift
//  SwiftUIApp
//
//  Created by Inderjeet Singh on 16/07/24.
//

import SwiftUI

struct ScrollViewReaderView: View {
    
    var names: [String] = ["heart.fill", "star.fill", "circle.hexagongrid.fill", "leaf.fill", "sun.max.fill", "ladybug.fill", "moon.fill", "sparkles", "snowflake"]
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("A view that provides programmatic scrolling, by working with a proxy to scroll to known child views.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    ScrollViewReader { value in
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(self.names.indices, id: \.self) { i in
                                    VStack(spacing: 4) {
                                        Image(systemName: self.names[i])
                                            .renderingMode(.original)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 60, height: 60, alignment: .center)
                                            .padding()
                                            .background(LinearGradient(colors: [.pink.opacity(0.5),.purple.opacity(0.7)], startPoint: .top, endPoint: .bottom))
                                            .clipShape(.rect(cornerRadius: 8))
                                        
                                        Text("\(i)")
                                            .padding()
                                            .background(.blue.opacity(0.1))
                                            .clipShape(Circle())
                                    }
                                    .padding()
                                    .background(.blue.opacity(0.1))
                                    .clipShape(.rect(cornerRadius: 8))
                                    .id(i)
                                }
                            }
                        }
                        .scrollIndicators(.hidden)
                        
                        Button("Jump to #3") {
                            value.scrollTo(3, anchor: .leading)
                        }
                        .padding()
                        .background(.blue.opacity(0.3))
                        .clipShape(.rect(cornerRadius: 8))
                    }
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/scrollviewreader")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Scroll View Reader")
    }
}

#Preview {
    ScrollViewReaderView()
}
