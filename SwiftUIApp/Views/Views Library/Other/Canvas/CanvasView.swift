//
//  CanvasView.swift
//  SwiftUIApp
//
//  Created by Inderjeet Singh on 17/07/24.
//

import SwiftUI

struct CanvasView: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("A view type that supports immediate mode drawing.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Canvas(
                        opaque: false,
                        colorMode: .linear,
                        rendersAsynchronously: false
                    ) { context, size in
                        context.opacity = 0.3
                        
                        let rect = CGRect(origin: .zero, size: size)
                        
                        var path = Circle().path(in: rect)
                        context.fill(path, with: .color(.red))
                        
                        let newRect = rect.applying(.init(scaleX: 0.5, y: 0.5))
                        path = Circle().path(in: newRect)
                        context.fill(path, with: .color(.red))
                    }
                }
                .frame(height: 300)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/canvas")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.vertical)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Canvas")
    }
    
    private func secondsValue(for date: Date) -> Double {
            let seconds = Calendar.current.component(.second, from: date)
            return Double(seconds) / 60
        }
}

#Preview {
    CanvasView()
}
