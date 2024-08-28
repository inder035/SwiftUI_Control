//
//  ScrollTransitionView.swift
//  TestNavigation
//
//  Created by Inderjeet Singh on 14/08/24.
//

import SwiftUI

struct ScrollTransitionView: View {
    
    var body: some View {
        VStack {
            VStack(spacing: 20) {
                Text("Applies the given transition, animating between the phases of the transition as this view appears and disappears within the visible region of the containing scroll view, or other container specified using the coordinateSpace parameter.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                ScrollView {
                    ForEach(0..<60) { i in
                        RoundedRectangle(cornerRadius: 25)
                            .fill(.blue)
                            .frame(height: 80)
                            .scrollTransition(.animated.threshold(.visible(0.9))) { content, phase in
                                content
                                    .opacity(phase.isIdentity ? 1 : 0)
                                    .scaleEffect(phase.isIdentity ? 1 : 0.75)
                                    .blur(radius: phase.isIdentity ? 0 : 10)
                            }
                            .padding(.horizontal)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.vertical)
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/scrolltransition(_:axis:transition:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Scroll Transition")
    }
}

#Preview {
    ScrollTransitionView()
}
