//
//  AnimationView.swift
//  TestNavigation
//
//  Created by Inderjeet Singh on 16/08/24.
//

import SwiftUI

struct AnimationView: View {
    let txt = Array("Hello")
    @State private var flipAngle = Double.zero
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Applies the given animation to this view when the specified value changes.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack(spacing: 8) {
                    HStack(spacing: 0) {
                        ForEach(0..<txt.count, id: \.self) { flip in
                            Text(String(txt[flip]))
                                .font(.largeTitle)
                                .rotation3DEffect(.degrees(flipAngle), axis: (x: 0.0, y: 1.0, z: 0.0))
                                .animation(.default.delay(Double(flip) * 0.1), value: flipAngle)
                        }
                    }
                    
                    Button(action: {
                        flipAngle = (flipAngle == .zero) ? 360 : .zero
                    }, label: {
                        Text("Flip")
                            .padding()
                            .bold()
                    })
                    .buttonStyle(.borderedProminent)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/animation(_:value:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Animation")
    }
}

#Preview {
    AnimationView()
}
