//
//  RedactedView.swift
//  TestNavigation
//
//  Created by Inderjeet Singh on 14/08/24.
//

import SwiftUI

struct RedactedView: View {
    @State private var isInfoShowing = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Adds a reason to apply a redaction to this view hierarchy.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack (alignment: .leading, spacing: 8) {
                    Text("Bank Account Number")
                        .font(.headline)
                        .foregroundColor(.black)
                        .fontWeight(.semibold)
                    
                    HStack (spacing: 20) {
                        Text("1234-56789-0012")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .redacted(reason: isInfoShowing ? [] : .placeholder)
                        Spacer()
                        Button {
                            isInfoShowing.toggle()
                        } label: {
                            Text(isInfoShowing ? "Hide" : "Show")
                                .underline()
                        }
                    }
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/redacted(reason:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Redacted")
    }
}

#Preview {
    RedactedView()
}
