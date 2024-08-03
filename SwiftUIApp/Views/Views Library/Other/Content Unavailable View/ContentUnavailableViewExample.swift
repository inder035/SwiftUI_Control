//
//  ContentUnavailableViewExample.swift
//  SwiftUIApp
//
//  Created by Inderjeet Singh on 17/07/24.
//

import SwiftUI

struct ContentUnavailableViewExample: View {
    var names: [String] = []
    
    var body: some View {
        ScrollView {
            VStack {
                Text("An interface, consisting of a label and additional content, that you display when the content of your app is unavailable to users.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
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
                    
                    if self.names.isEmpty {
                        ContentUnavailableView(
                            "Connection issue",
                            systemImage: "wifi.slash",
                            description: Text("Check your internet connection")
                        )
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/contentunavailableview")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.vertical)
            }
            .padding(.horizontal)
            
        }
        .navigationTitle("Content Unavailable View")
    }
}

#Preview {
    ContentUnavailableViewExample()
}
