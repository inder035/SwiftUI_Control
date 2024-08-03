//
//  SubmitScopeView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 20/07/24.
//

import SwiftUI

struct SubmitScopeView: View {
    @State private var searchText = ""
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Prevents submission triggers originating from this view to invoke a submission action configured by a submission modifier higher up in the view hierarchy.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    TextField("Search", text: $searchText)
                        .padding()
                        .background(.white)
                        .clipShape(.rect(cornerRadius: 8))
                        .submitLabel(.done)
                        .onSubmit(of: .text) {
                            print(searchText)
                        }
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/submitscope(_:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Submit Scope")
    }
}

#Preview {
    SubmitScopeView()
}
