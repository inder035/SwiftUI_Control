//
//  SafeAreaInsetView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 20/07/24.
//

import SwiftUI

struct SafeAreaInsetView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Shows the specified content beside the modified view.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    ForEach(0..<100) { i in
                        Text("Row \(i)")
                    }
                    .navigationTitle("Select a row")
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/safeareainset(edge:alignment:spacing:content:)-6gwby")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Safe Area Inset")
        .safeAreaInset(edge: .bottom, alignment: .trailing) {
            Button {
                print("Show help")
            } label: {
                Image(systemName: "info.circle.fill")
                    .font(.largeTitle)
                    .symbolRenderingMode(.multicolor)
                    .padding(.trailing)
            }
            .accessibilityLabel("Show help")
        }
    }
}

#Preview {
    SafeAreaInsetView()
}
