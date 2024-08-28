//
//  TransitionView.swift
//  TestNavigation
//
//  Created by Inderjeet Singh on 14/08/24.
//

import SwiftUI

extension AnyTransition {
    static var scaleAndSlide: AnyTransition {
        AnyTransition.scale.combined(with: .slide)
    }
}

struct TransitionView: View {
    @State private var showDetails = false
    
    @State var show = false
    var body: some View {
        
        ScrollView {
            VStack(spacing: 20) {
                Text("Associates a transition with the view.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    VStack {
                        Button(action: {
                            self.show.toggle()
                        }, label: {
                            Text ("Custom Transition")
                        })
                        
                        Spacer()
                        
                        if self.show {
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.orange)
                                .frame (width: 100, height: 100)
                                .transition(AnyTransition.scaleAndSlide)
                        }
                    }
                    .padding()
                    .animation(.default, value: self.show)
                }
                .frame(height: 200)
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/transition(_:)-5h5h0")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Transition")
    }
}

#Preview {
    TransitionView()
}
