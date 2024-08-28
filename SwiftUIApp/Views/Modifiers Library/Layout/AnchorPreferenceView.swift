//
//  AnchorPreferenceView.swift
//  SwiftUIApp
//
//  Created by Tarun Mehta on 04/08/24.
//

import SwiftUI

struct AnchorPreferenceView: View {
    @State private var myVisibility = true
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Sets a value for the specified preference key, the value is a function of a geometry value tied to the current coordinate space, allowing readers of the value to convert the geometry to their local coordinates.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                
                VStack {
//                    VStack {
//                        Toggle("Show MyAnchor implementation", isOn: $myVisibility)
//                            .padding(.bottom, 30)
//                        Image(systemName: "globe")
//                            .imageScale(.large)
//                            .foregroundColor(.accentColor)
//                        Text("Hello, world!")
//                            .anchorPreference(key: HighlightKey.self, value: .bounds, transform: { $0 })
//                            .myAnchorPreference(key: MyHighlightKey.self, value: .bounds, transform: { $0 })
//                    }
//                    .padding()
//                    .overlayPreferenceValue(HighlightKey.self) { value in
//                        if let value {
//                            GeometryReader { proxy in
//                                let frame = proxy[value]
//                                Ellipse()
//                                    .stroke(Color.red, lineWidth: 2)
//                                    .padding(-10)
//                                    .frame(width: frame.width, height: frame.height)
//                                    .offset(x: frame.origin.x, y: frame.origin.y)
//                                    .opacity(myVisibility ? 0 : 1)
//                            }
//                        }
//                    }
//                    .overlayPreferenceValue(MyHighlightKey.self) { value in
//                        if let value {
//                            GeometryReader { proxy in
//                                let frame = proxy[value]
//                                Ellipse()
//                                    .stroke(Color.red, lineWidth: 2)
//                                    .padding(-10)
//                                    .frame(width: frame.width, height: frame.height)
//                                    .offset(x: frame.origin.x, y: frame.origin.y)
//                                    .opacity(myVisibility ? 1 : 0)
//                            }
//                        }
//                    }
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/anchorpreference(key:value:transform:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Anchor Preference")
    }
}


#Preview {
    AnchorPreferenceView()
}
