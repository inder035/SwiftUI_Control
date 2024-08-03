//
//  GaugeView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 13/07/24.
//

import SwiftUI

struct GaugeView: View {
    @State private var current = 0.67
    let gradient = Gradient(colors: [.green, .yellow, .orange, .red])
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("A view that shows a value within a range.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Text("Linear Capacity")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.title3).bold()
                    VStack {
                        Gauge(value: current){}
                            .gaugeStyle(.linearCapacity)
                    }
                    .padding()
                    .background(.blue.opacity(0.1))
                    .clipShape(.rect(cornerRadius: 8))
                }
                
                VStack {
                    Text("Accessory Capacity")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.title3).bold()
                    VStack {
                        Gauge(value: current){}
                            .gaugeStyle(.accessoryLinear)
                    }
                    .padding()
                    .background(.blue.opacity(0.1))
                    .clipShape(.rect(cornerRadius: 8))
                }
                
                VStack {
                    Text("Accessory Linear Capacity")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.title3).bold()
                    VStack {
                        Gauge(value: current){}
                            .gaugeStyle(.accessoryLinearCapacity)
                    }
                    .padding()
                    .background(.blue.opacity(0.1))
                    .clipShape(.rect(cornerRadius: 8))
                }
                
                VStack {
                    Text("Accessory Circular")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.title3).bold()
                    VStack {
                        Gauge(value: current){
                        }currentValueLabel: {
                            Text("\(Int(current*100))")
                        }
                        .gaugeStyle(.accessoryCircular)
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding()
                    .background(.blue.opacity(0.1))
                    .clipShape(.rect(cornerRadius: 8))
                }
                
                VStack {
                    Text("Accessory Circular Capacity")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.title3).bold()
                    VStack {
                        Gauge(value: current){
                        }currentValueLabel: {
                            Text("\(Int(current*100))")
                        }
                        .gaugeStyle(.accessoryCircularCapacity)
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding()
                    .background(.blue.opacity(0.1))
                    .clipShape(.rect(cornerRadius: 8))
                }
                VStack {
                    Text("Accessory Circular with Gradient")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.title3).bold()
                    VStack {
                        Gauge(value: current){
                        }currentValueLabel: {
                            Text("\(Int(current*100))")
                        }
                        .gaugeStyle(.accessoryCircular)
                        .tint(gradient)
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding()
                    .background(.blue.opacity(0.1))
                    .clipShape(.rect(cornerRadius: 8))
                }
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/gauge")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Gauge")
    }
}

#Preview {
    GaugeView()
}
