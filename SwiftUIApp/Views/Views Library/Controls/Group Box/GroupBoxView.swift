//
//  GroupBoxView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 13/07/24.
//

import SwiftUI

struct GroupBoxView: View {
    @State private var userAgreed = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("A stylized view, with an optional label, that visually collects a logical grouping of content.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
    
                GroupBox(label:
                        Label("End-User Agreement", systemImage: "building.columns")
                ) {
                    VStack {
                        Text("One of my resolutions for 2022 is to get more exposed to SwiftUI. Like many others, I wasn’t jumping on the SwiftUI bandwagon at the very beginning. However, SwiftUI seems to be maturing and I’ve noticed many companies out there seeking not only Objective-C and Swift(UIKit) experience, some are considering applicants who have SwiftUI experience to have a more of an upper-hand.\n\nI’ve been very loyal to UIKit over the years but now I am more inspired to start tinkering with SwiftUI. Thankfully, there are a handful of YouTube video and Medium tutorials that showcase SwiftUI’s declarative simplicity that has me.")
                            .font(.footnote)
                        Toggle(isOn: $userAgreed) {
                            Text("I agree to the above terms")
                        }
                    }
                    .padding(.top, 4)
                }

                Text("Nested Group Box")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.title3).bold()
                GroupBox {
                    Text("Outer Content")
                    GroupBox {
                        Text("Middle Content")
                        GroupBox {
                            Text("Inner Content")
                        }
                    }
                }
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/label")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Group Box")
    }
}

#Preview {
    GroupBoxView()
}
