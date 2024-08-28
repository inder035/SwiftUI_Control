//
//  OverlayPreferenceValueView.swift
//  SwiftUIApp
//
//  Created by Tarun Mehta on 04/08/24.
//

import SwiftUI

struct OverlayPreferenceValueView: View {
    
    @State private var progress: CGFloat = 0
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Reads the specified preference value from the view, using it to produce a second view that is applied as an overlay to the original view.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    VStack(spacing: 20) {
                        Slider(value: $progress, in: 0...100)
                            .overlay(
                                GeometryReader { geometry in
                                    Color.clear.preference(key: ProgressPreferenceKey.self, value: geometry.size.width)
                                }
                            )
                        Text("Progress: \(Int(progress))%")
                    }
                    .padding()
                    .overlayPreferenceValue(ProgressPreferenceKey.self) { totalWidth in
                        RoundedRectangle(cornerRadius: 5)
                            .fill(Color.blue)
                            .frame(width: totalWidth * (progress / 100), height: 10)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/overlaypreferencevalue(_:_:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Overlay Preference Value")
    }
}

struct ProgressPreferenceKey: PreferenceKey {
    typealias Value = CGFloat
    static var defaultValue: CGFloat = 0
    
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}

#Preview {
    OverlayPreferenceValueView()
}
