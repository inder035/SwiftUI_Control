//
//  CoordinateSpaceView.swift
//  SwiftUIApp
//
//  Created by Tarun Mehta on 04/08/24.
//

import SwiftUI

struct CoordinateSpaceView: View {
    @State private var location = CGPoint.zero
    
    var circle: some View {
        Circle()
            .frame(width: 25, height: 25)
            .gesture(drag)
            .padding(5)
    }
    
    var drag: some Gesture {
        DragGesture(coordinateSpace: .named("stack"))
            .onChanged { info in location = info.location }
    }
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Assigns a name to the view’s coordinate space, so other code can operate on dimensions like points and sizes relative to the named space.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    VStack {
                        Color.red.frame(width: 100, height: 100)
                            .overlay(circle)
                        Text("Location: \(Int(location.x)), \(Int(location.y))")
                    }
                    .coordinateSpace(name: "stack")
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/coordinatespace(name:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Coordinate Space")
    }
}

#Preview {
    CoordinateSpaceView()
}
