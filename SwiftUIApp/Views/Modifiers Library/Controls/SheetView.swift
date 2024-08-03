//
//  SheetView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 20/07/24.
//

import SwiftUI

struct SheetView: View {
    @State private var showingSheet = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Presents a sheet when a binding to a Boolean value that you provide is true.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Button("Show Sheet") {
                        showingSheet.toggle()
                    }
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                .sheet(isPresented: $showingSheet) {
                    SheetDataView(showingSheet: $showingSheet)
                }
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/sheet(ispresented:ondismiss:content:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Sheet")
    }
}

struct SheetDataView: View {
    @Binding var showingSheet : Bool
    
    var body: some View {
        VStack {
            Text("Page Opened")
            Button("Hide Sheet") {
                showingSheet.toggle()
            }
        }
    }
}

#Preview {
    SheetView()
}
