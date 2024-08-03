//
//  NavigationSecondView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 14/07/24.
//

import SwiftUI

struct NavigationSecondView: View {

    var body: some View {
        VStack {
            Text("Click to go second page")
            
            NavigationLink {
                NavigationThirdView()
            } label: {
                Text("Next Page").bold()
                    .foregroundStyle(Color.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .clipShape(.rect(cornerRadius: 8))
            }
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(.blue.opacity(0.1))
        .clipShape(.rect(cornerRadius: 8))
        .padding()
    }
}

#Preview {
    NavigationSecondView()
}
