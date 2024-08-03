//
//  TabbarView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 19/07/24.
//

import SwiftUI

struct TabbarView: View {
    var body: some View {
        TabView {
            ContentView().tabItem{
                Label("Views Library", systemImage: "traction.control.tirepressure")
            }
            ModifiersLibraryView().tabItem{
                Label("Modifiers", systemImage: "book.pages.fill")
            }
        }
    }
}

#Preview {
    TabbarView()
}
