//
//  AsyncImageView.swift
//  SwiftUIApp
//
//  Created by Inderjeet Singh on 17/07/24.
//

import SwiftUI

struct AsyncImageView: View {
    let photoURL = URL(string: "https://picsum.photos/256")
    
    var body: some View {
        ScrollView {
            VStack {
                Text("A view that asynchronously loads and displays an image.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    AsyncImage(url: photoURL) { phase in
                        if let image = phase.image {
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        } else if phase.error != nil {
                            Image(systemName: "questionmark.diamond")
                                .imageScale(.large)
                        } else {
                            ProgressView()
                        }
                    }
                    .frame(width: 240, height: 240)
                    .clipShape(.rect(cornerRadius: 8))
                    .background(.ultraThinMaterial)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/asyncimage")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.vertical)
            }
            .padding(.horizontal)
            
        }
        .navigationTitle("Async Image")
    }
}

#Preview {
    AsyncImageView()
}
