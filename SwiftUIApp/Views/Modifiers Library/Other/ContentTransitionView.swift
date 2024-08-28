//
//  ContentTransitionView.swift
//  TestNavigation
//
//  Created by Inderjeet Singh on 16/08/24.
//

import SwiftUI

struct ContentTransitionView: View {
    @State var value: Double = 0
    
    var currencyFormater: NumberFormatter = {
        var formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.currencySymbol = "$"
        return formatter
    }()
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("A kind of transition that applies to the content within a single view, rather than to the insertion or removal of a view.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack(spacing: 8) {
                    Text("\(currencyFormater.string(from: value as NSNumber)!)")
                        .contentTransition(.numericText(value: value))
                        .font(.largeTitle)
                        .bold()
                    
                    Button {
                        self.incrementValue(with: 11.99)
                    } label: {
                        Text("More money")
                            .padding(8)
                    }
                    .buttonStyle(.borderedProminent)
                    
                    Circle()
                        .frame(width: 100, height: 100)
                        .padding()
                        .phaseAnimator([false, true]) { circle, move in
                            circle
                                .foregroundColor(move ? .red : .blue)
                        } animation: { move in
                                .linear(duration: 2).delay(0.2)
                        }
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/contenttransition#")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Content Transition")
    }
    
    func incrementValue(with amount: Double) {
        withAnimation {
            self.value += amount
        }
    }
}

#Preview {
    ContentTransitionView()
}
