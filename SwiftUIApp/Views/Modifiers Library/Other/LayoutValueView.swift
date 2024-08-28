//
//  LayoutValueView.swift
//  TestNavigation
//
//  Created by Inderjeet Singh on 14/08/24.
//

import SwiftUI

struct LayoutValueView: View {
    let colors: [Color] = [.yellow, .orange, .red, .pink, .purple, .blue, .cyan, .green]
    @State private var angle : Angle = .zero
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Associates a value with a custom layout property.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Button("Rotate") {
                        withAnimation(.easeInOut(duration: 1.0)) {
                            angle = (angle == .zero ? .degrees(90) : .zero)
                        }
                    }
                    .buttonStyle(.borderedProminent)
                    .padding()
                    
                    WheelLayout(radius: 130.0, rotation: angle) {
                        ForEach(0..<12) { idx in
                            RoundedRectangle(cornerRadius: 8)
                                .fill(colors[idx%colors.count].opacity(0.7))
                                .frame(width: 70, height: 70)
                                .overlay { Text("\(idx+1)") }
                        }
                    }
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/deviceactivity/deviceactivityreport/layoutvalue(key:value:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Keyboard Shortcut")
    }
}

struct WheelLayout: Layout {
    var radius: CGFloat
    var rotation: Angle
    
    func sizeThatFits(proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) -> CGSize {
        let maxSize = subviews.map { $0.sizeThatFits(proposal) }.reduce(CGSize.zero) {
            return CGSize(width: max($0.width, $1.width), height: max($0.height, $1.height))
        }
        return CGSize(width: (maxSize.width / 2 + radius) * 2, height: (maxSize.height / 2 + radius) * 2)
    }
    
    func placeSubviews(in bounds: CGRect, proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) {
        let angleStep = (Angle.degrees(360).radians / Double(subviews.count))

        for (index, subview) in subviews.enumerated() {
            let angle = angleStep * CGFloat(index) + rotation.radians
            var point = CGPoint(x: 0, y: -radius).applying(CGAffineTransform(rotationAngle: angle))
            point.x += bounds.midX
            point.y += bounds.midY
            subview.place(at: point, anchor: .center, proposal: .unspecified)
        }
    }
}

#Preview {
    LayoutValueView()
}
