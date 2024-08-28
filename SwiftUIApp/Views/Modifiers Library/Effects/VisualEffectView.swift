//
//  VisualEffectView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 20/07/24.
//

import SwiftUI

struct VisualEffectView: View {
    @State private var rotationAmount = 0.0
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Visual Effects change the visual appearance of a view without changing its ancestors or descendents.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Grid {
                        ForEach(0..<3) { _ in
                            GridRow {
                                ForEach(0..<3) { _ in
                                    Circle()
                                        .fill(.green)
                                        .frame(width: 80, height: 80)
                                        .visualEffect { content, proxy in
                                            content.hueRotation(.degrees(proxy.frame(in: .global).midY / 2))
                                        }
                                }
                            }
                        }
                    }
                    .rotationEffect(.degrees(rotationAmount))
                    .onAppear {
                        withAnimation(.linear(duration: 5).repeatForever(autoreverses: false)) {
                            rotationAmount = 360
                        }
                    }
                }
                .frame(height: 350)
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                VStack {
                    ScrollView {
                        ForEach(0..<100) { i in
                            Text("Row \(i)")
                                .font(.largeTitle)
                                .frame(maxWidth: .infinity)
                                .visualEffect { content, proxy in
                                    content.blur(radius: blurAmount(for: proxy))
                                }
                        }
                    }
                }
                .frame(height: 200)
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/visualeffect")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Visual Effect")
    }
    
    func blurAmount(for proxy: GeometryProxy) -> Double {
        let scrollViewHeight = proxy.bounds(of: .scrollView)?.height ?? 200
        let ourCenter = proxy.frame(in: .scrollView).midY
        let distanceFromCenter = abs(scrollViewHeight / 2 - ourCenter)
        return Double(distanceFromCenter) / 100
    }
}


#Preview {
    VisualEffectView()
}
