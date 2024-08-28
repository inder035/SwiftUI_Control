//
//  MaskView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 20/07/24.
//

import SwiftUI

struct MaskView: View {
    
    let photoURL = URL(string: "https://picsum.photos/256")
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("An optional view whose alpha channel is used to mask a view’s content.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    AsyncImage(url: photoURL){ phase in
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
                    .frame(width: 300, height: 300)
                    .mask(
                        Text("SWIFT!")
                            .font(.system(size: 72))
                    )
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/uikit/uiview/1622557-mask")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Mask")
    }
}

#Preview {
    MaskView()
}
