//
//  TransformAnchorPreferenceView.swift
//  SwiftUIApp
//
//  Created by Tarun Mehta on 04/08/24.
//

import SwiftUI

struct TransformAnchorPreferenceView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Sets a value for the specified preference key, the value is a function of the key’s current value and a geometry value tied to the current coordinate space, allowing readers of the value to convert the geometry to their local coordinates.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                
                VStack {
                    List(1..<35) { idx in
                        HStack {
                            Text("idx: \(idx)")
                            
                            InnerView(idx: idx)
                        }
                    }
                    
                    ForEach(0..<20) {
                        Text("Item \($0)")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                            .foregroundStyle(.white)
                            .background(.blue.opacity(0.5))
                            .clipShape(.rect(cornerRadius: 8))
                        InnerView(idx: $0)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/transformanchorpreference(key:value:transform:)#")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Transform Anchor Preference")
    }
}

struct InnerView: View {
    @State var height: CGFloat = 0
    var idx: Int
    
    var body: some View {
        GeometryReader { proxy in
            generateContent(maxWidth: proxy.frame(in: .global).size.width)
                .anchorPreference(key: CGFloatPreferenceKey.self, value: Anchor<CGRect>.Source.bounds, transform: { anchor in
                    proxy[anchor].size.height
                })
        }
        .frame(height: height)
        .onPreferenceChange(CGFloatPreferenceKey.self, perform: { value in
            height = value
        })
    }
    
    private func generateContent(maxWidth: CGFloat) -> some View {
            VStack {
                HStack {
                    Text("hello")
                        .padding()
                        .background(Color.purple)
                    
                    Text("world")
                        .padding()
                        .background(Color.purple)
                }
            }
            .frame(width: maxWidth)
    }
}

struct CGFloatPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat , nextValue: () -> CGFloat) {
        value = nextValue()
    }
}

#Preview {
    TransformAnchorPreferenceView()
}
