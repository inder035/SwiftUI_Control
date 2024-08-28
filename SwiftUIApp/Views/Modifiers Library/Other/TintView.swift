//
//  TintView.swift
//  TestNavigation
//
//  Created by Inderjeet Singh on 14/08/24.
//

import SwiftUI

struct TintView: View {
    var body: some View {
        VStack {
            VStack(spacing: 20) {
                Text("Sets the tint color within this view.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                
                List(1..<51) { i in
                    Label("Row \(i)", systemImage: "\(i).circle")
                        .listItemTint(.preferred(i.isMultiple(of: 2) ? .red : .green))
                }
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/tint(_:)-23xyq")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
            }
        }
        .navigationTitle("Tint")
    }
}

#Preview {
    TintView()
}
