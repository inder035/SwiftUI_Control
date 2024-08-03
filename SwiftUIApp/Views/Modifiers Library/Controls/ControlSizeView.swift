//
//  ControlSizeView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 20/07/24.
//

import SwiftUI

struct ControlSizeView: View {
    @State private var showingSheet = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("The size classes, like regular or small, that you can apply to controls within a view.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Button("Show Detail View") {
                        showingSheet.toggle()
                    }
                    .sheet(isPresented: $showingSheet, content: ContextMenuView.init)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/controlsize")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Control Size")
    }
}

#Preview {
    ControlSizeView()
}
