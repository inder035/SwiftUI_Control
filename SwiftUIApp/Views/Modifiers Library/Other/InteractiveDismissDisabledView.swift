//
//  InteractiveDismissDisabledView.swift
//  TestNavigation
//
//  Created by Inderjeet Singh on 16/08/24.
//

import SwiftUI

struct InteractiveDismissDisabledView: View {
    @State private var showingSheet = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Conditionally prevents interactive dismissal of presentations like popovers, sheets, and inspectors.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Button("Show Sheet") {
                        showingSheet.toggle()
                    }
                    .sheet(isPresented: $showingSheet, content: ExampleSheet.init)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/interactivedismissdisabled(_:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Interactive Dismiss Disabled")
    }
}

struct ExampleSheet: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack(spacing: 20) {
            Text("Sheet view")
            Button("Dismiss") {
                dismiss()
            }
        }
        .interactiveDismissDisabled()
    }
}

#Preview {
    InteractiveDismissDisabledView()
}
