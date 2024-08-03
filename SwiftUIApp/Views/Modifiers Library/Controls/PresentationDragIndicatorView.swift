//
//  PresentationDragIndicatorView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 20/07/24.
//

import SwiftUI

struct PresentationDragIndicatorView: View {
    @State private var showingCredits = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Sets the visibility of the drag indicator on top of a sheet.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Button("Show Credits") {
                        showingCredits.toggle()
                    }
                    .padding()
                    .background(.blue.opacity(0.3))
                    .clipShape(.rect(cornerRadius: 8))
                    .sheet(isPresented: $showingCredits) {
                        Text("This app was brought to you by Hacking with Swift")
                            .presentationDetents([.medium, .large])
                    }
                    
                    Button("Show Credits") {
                        showingCredits.toggle()
                    }
                    .padding()
                    .background(.blue.opacity(0.3))
                    .clipShape(.rect(cornerRadius: 8))
                    .sheet(isPresented: $showingCredits) {
                        Text("This app was brought to you by Hacking with Swift")
                            .presentationDetents([.height(100)])
                    }
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/presentationdragindicator(_:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Presentation Drag Indicator")
    }
}

#Preview {
    PresentationDragIndicatorView()
}
