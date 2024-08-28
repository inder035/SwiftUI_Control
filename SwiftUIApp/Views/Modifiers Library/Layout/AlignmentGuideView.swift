//
//  AlignmentGuideView.swift
//  SwiftUIApp
//
//  Created by Tarun Mehta on 04/08/24.
//

import SwiftUI

struct AlignmentGuideView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Sets the view’s vertical alignment.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                
                VStack {
                    VStack(alignment: .leading) {
                        ForEach(0..<10) { position in
                            Text("Number \(position)")
                                .alignmentGuide(.leading) { _ in Double(position) * -10 }
                        }
                    }
                    .background(.red)
                    .background(.blue)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/alignmentguide(_:computevalue:)-6y3u2")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Alignment Guide")
    }
}

#Preview {
    AlignmentGuideView()
}
