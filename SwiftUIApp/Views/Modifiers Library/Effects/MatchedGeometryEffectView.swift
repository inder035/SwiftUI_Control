//
//  MatchedGeometryEffectView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 20/07/24.
//

import SwiftUI

struct MatchedGeometryEffectView: View {
    
    @Namespace private var animation
    @State private var isZoomed = false
    
    var frame: Double {
        isZoomed ? 300 : 44
    }
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Defines a group of views with synchronized geometry using an identifier and namespace that you provide.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    VStack {
                        HStack {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(.blue)
                                .frame(width: frame, height: frame)
                                .padding(.top, isZoomed ? 20 : 0)
                            
                            if isZoomed == false {
                                Text("Taylor Swift – 1989")
                                    .matchedGeometryEffect(id: "AlbumTitle", in: animation)
                                    .font(.headline)
                                Spacer()
                            }
                        }
                        
                        if isZoomed == true {
                            Text("Taylor Swift – 1989")
                                .matchedGeometryEffect(id: "AlbumTitle", in: animation)
                                .font(.headline)
                                .padding(.bottom, 60)
                            Spacer()
                        }
                    }
                    .onTapGesture {
                        withAnimation(.spring()) {
                            isZoomed.toggle()
                        }
                    }

                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/matchedgeometryeffect(id:in:properties:anchor:issource:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Matched Geometry Effect")
    }
}

#Preview {
    MatchedGeometryEffectView()
}
