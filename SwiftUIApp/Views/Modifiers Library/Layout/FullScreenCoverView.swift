//
//  FullScreenCoverView.swift
//  SwiftUIApp
//
//  Created by Tarun Mehta on 04/08/24.
//

import SwiftUI

struct FullScreenCoverView: View {
    @State private var isPresenting = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Presents a modal view that covers as much of the screen as possible when binding to a Boolean value you provide is true.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Button("Present Full-Screen Cover") {
                        isPresenting.toggle()
                    }
                    .fullScreenCover(isPresented: $isPresenting,
                                     onDismiss: didDismiss) {
                        VStack {
                            Text("A full-screen modal view.")
                                .font(.title)
                            Text("Tap to Dismiss")
                        }
                        .onTapGesture {
                            isPresenting.toggle()
                        }
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity,
                               maxHeight: .infinity)
                        .background(Color.blue)
                        .ignoresSafeArea(edges: .all)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/fullscreencover(ispresented:ondismiss:content:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Full Screen Cover")
    }
    
    func didDismiss() {
        // Handle the dismissing action.
    }
}

#Preview {
    FullScreenCoverView()
}
