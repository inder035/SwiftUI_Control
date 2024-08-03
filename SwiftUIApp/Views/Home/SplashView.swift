//
//  SplashView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 14/07/24.
//

import SwiftUI

struct SplashView: View {
    @State private var scale = 0.7
    @Binding var isActive: Bool
    
    var body: some View {
        VStack {
            VStack {
                Image("Logo_Image")
                    .resizable().frame(width: 200, height: 200)
                    .foregroundColor(.blue)
                    .clipShape(.rect(cornerRadius: 12))
                Text("SwiftUI")
                    .font(.system(size: 20)).bold()
            }.scaleEffect(scale)
                .onAppear{
                    withAnimation(.easeIn(duration: 0.7)) {
                        self.scale = 0.9
                    }
                }
        }.onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}

#Preview {
    SplashView(isActive: .constant(false))
}
