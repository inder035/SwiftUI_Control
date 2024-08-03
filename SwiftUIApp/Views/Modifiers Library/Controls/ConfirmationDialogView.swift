//
//  ConfirmationDialogView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 20/07/24.
//

import SwiftUI

struct ConfirmationDialogView: View {
    @State private var showingConfirmation = false
    @State private var backgroundColor = Color.white
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Presents a confirmation dialog using data to produce the dialog’s content and a text view for the title.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Button("Hello, World!") {
                        showingConfirmation = true
                    }
                    .confirmationDialog("Change background", isPresented: $showingConfirmation) {
                        Button("Red") { backgroundColor = .red }
                        Button("Green") { backgroundColor = .green }
                        Button("Blue") { backgroundColor = .blue }
                        Button("Cancel", role: .cancel) { }
                    } message: {
                        Text("Select a new color")
                    }
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/confirmationdialog(_:ispresented:titlevisibility:presenting:actions:)-4sugc")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Confirmation Dialog")
    }
}

#Preview {
    ConfirmationDialogView()
}
