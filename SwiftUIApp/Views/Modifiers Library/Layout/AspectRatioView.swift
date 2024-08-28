//
//  AspectRatioView.swift
//  SwiftUIApp
//
//  Created by Tarun Mehta on 04/08/24.
//

import SwiftUI

struct AspectRatioView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Constrains this view’s dimensions to the aspect ratio of the given size.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                
                VStack {
                    Ellipse()
                        .fill(Color.purple)
                        .aspectRatio(CGSize(width: 3, height: 4), contentMode: .fill)
                        .frame(width: 200, height: 200)
                        .border(Color(white: 0.75))
                        .padding(60)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/aspectratio(_:contentmode:)-771ow")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Aspect Ratio")
    }
}

#Preview {
    AspectRatioView()
}
