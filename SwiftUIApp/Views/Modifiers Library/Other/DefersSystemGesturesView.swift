//
//  DefersSystemGesturesView.swift
//  TestNavigation
//
//  Created by Inderjeet Singh on 16/08/24.
//

import SwiftUI

struct DefersSystemGesturesView: View {
    @State private var input = 0.0
    
    var body: some View {
        VStack {
            VStack(spacing: 20) {
                Text("Sets the screen edge from which you want your gesture to take precedence over the system gesture.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Text("Current value: \(input)")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .contentShape(Rectangle())
                        .gesture(
                            DragGesture().onChanged { value in
                                input = value.location.y - value.startLocation.y
                            }
                        )
                        .defersSystemGestures(on: .vertical)
                }
                .frame(height: 100)
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/deferssystemgestures(on:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
            
            Spacer()
        }
        .navigationTitle("Defers System Gestures")
    }
}

#Preview {
    DefersSystemGesturesView()
}
