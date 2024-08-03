//
//  TabItemView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 20/07/24.
//

import SwiftUI

struct TabItemView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                VStack {
                    Text("Deprecated").bold()
                        .foregroundStyle(Color.red)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("Sets the tab bar item associated with this view.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/controlgroup")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Tab Item")
    }
}

#Preview {
    TabItemView()
}
