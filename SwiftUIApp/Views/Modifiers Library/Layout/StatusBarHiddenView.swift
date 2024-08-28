//
//  StatusBarHiddenView.swift
//  SwiftUIApp
//
//  Created by Tarun Mehta on 04/08/24.
//

import SwiftUI

struct StatusBarHiddenView: View {
    @State private var hideStatusBar = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                VStack(spacing: 20) {
                    VStack {
                        Text("Deprecated").bold()
                            .foregroundStyle(Color.red)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text("Sets the visibility of the status bar.")
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
                
                VStack {
                    Button("Toggle Status Bar") {
                        withAnimation {
                            hideStatusBar.toggle()
                        }
                    }
                    .statusBar(hidden: hideStatusBar)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/statusbar(hidden:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Status Bar Hidden")
    }
}

#Preview {
    StatusBarHiddenView()
}
