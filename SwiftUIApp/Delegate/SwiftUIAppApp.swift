//
//  SwiftUIAppApp.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 13/07/24.
//

import SwiftUI

@main
struct SwiftUIAppApp: App {
    
    @State private var isActive = false
    
    var body: some Scene {
        WindowGroup {
            if isActive {
                NavigationStack {
                    TabbarView()
                        .navigationTitle("Home")
                }
            }else {
                SplashView(isActive: $isActive)
            }
        }
    }
}
