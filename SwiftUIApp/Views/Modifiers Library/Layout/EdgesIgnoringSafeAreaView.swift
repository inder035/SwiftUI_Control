//
//  EdgesIgnoringSafeAreaView.swift
//  SwiftUIApp
//
//  Created by Tarun Mehta on 04/08/24.
//

import SwiftUI

struct EdgesIgnoringSafeAreaView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Changes the view’s proposed area to extend outside the screen’s safe areas.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                
                VStack {
                    Text("This text is outside of the top safe area.")
                        .edgesIgnoringSafeArea([.top])
                        .border(Color.purple)
                    Text("This text is inside VStack.")
                        .border(Color.yellow)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/edgesignoringsafearea(_:)?changes=latest_major")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Edges Ignoring SafeArea")
    }
}

#Preview {
    EdgesIgnoringSafeAreaView()
}
