//
//  TabViewExample.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 15/07/24.
//

import SwiftUI

struct TabViewExample: View {
    var body: some View {
        TabView {
            ReceivedView().tabItem{
                Label("Received", systemImage: "tray.and.arrow.down.fill")
            }
            SentView().tabItem{
                Label("Sent", systemImage: "tray.and.arrow.up.fill")
            }
            AccountView().tabItem{
                Label("Account", systemImage: "person.crop.circle.fill")
            }
            .badge("!")
        }
        .navigationTitle("TabView")
    }
}

struct ReceivedView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("A view that switches between multiple child views using interactive user interface elements.")
                .frame(maxWidth: .infinity, alignment: .leading)
            Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/tabview")!)
                .frame(maxWidth: .infinity, alignment: .leading)
            Spacer()
        }
        .padding(.horizontal)
    }
}

struct SentView: View {
    var body: some View {
        Text("Sent View")
    }
}

struct AccountView: View {
    var body: some View {
        Text("Account View")
    }
}

#Preview {
    TabViewExample()
}
