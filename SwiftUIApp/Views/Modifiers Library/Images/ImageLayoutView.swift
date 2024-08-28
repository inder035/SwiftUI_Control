//
//  ImageLayoutView.swift
//  SwiftUIApp
//
//  Created by Tarun Mehta on 04/08/24.
//

import SwiftUI

struct ImageLayoutView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("A view that displays an image.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Text("Antialiased")
                    Image(uiImage: UIImage(named: "Logo_Image")!)
                        .antialiased(true)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                VStack {
                    Text("Rendering Mode")
                    Image(uiImage: UIImage(named: "Logo_Image")!)
                        .renderingMode(.original)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                VStack {
                    Text("Resizable")
                    Image(uiImage: UIImage(named: "Logo_Image")!)
                        .resizable()
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                VStack {
                    Text("Interpolation")
                    Image(uiImage: UIImage(named: "Logo_Image")!)
                        .interpolation(/*@START_MENU_TOKEN@*/.high/*@END_MENU_TOKEN@*/)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                VStack {
                    Text("Symbol Rendering Mode")
                    Image(systemName: "person.3.sequence.fill")
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(
                            .linearGradient(colors: [.red, .black], startPoint: .top, endPoint: .bottomTrailing),
                            .linearGradient(colors: [.green, .black], startPoint: .top, endPoint: .bottomTrailing),
                            .linearGradient(colors: [.blue, .black], startPoint: .top, endPoint: .bottomTrailing)
                        )
                        .font(.system(size: 144))
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                VStack {
                    VStack(spacing: 20) {
                        Text("Symbol Variant")
                        
                        HStack(spacing: 20) {
                            Image(systemName: "person")
                            Image(systemName: "folder")
                            Image(systemName: "gearshape")
                            Image(systemName: "list.bullet")
                        }

                        HStack(spacing: 20) {
                            Image(systemName: "person")
                            Image(systemName: "folder")
                            Image(systemName: "gearshape")
                            Image(systemName: "list.bullet")
                        }
                        .symbolVariant(.fill) // Shows filled variants, when available.
                    }

                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/actionsheet")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Image Layout")
    }
}

#Preview {
    ImageLayoutView()
}
