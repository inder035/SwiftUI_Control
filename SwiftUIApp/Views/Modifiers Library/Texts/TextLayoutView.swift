//
//  TextLayoutView.swift
//  SwiftUIApp
//
//  Created by Tarun Mehta on 04/08/24.
//

import SwiftUI

struct TextLayoutView: View {
    @State private var username = String()
    @State private var email = String()
    @State private var amount = 50.0
    @State private var bio = "Describe yourself."
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("A view that displays one or more lines of read-only text.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack(alignment: .leading) {
                    Text("Allows Tightening")
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    VStack {
                        VStack {
                            Text("This is a wide text element")
                                .font(.body)
                                .lineLimit(1)
                                .allowsTightening(true)
                                .frame(width: 200, alignment: .leading)
                            
                            Text("This is a wide text element")
                                .font(.body)
                                .lineLimit(1)
                                .allowsTightening(false)
                                .frame(width: 200, alignment: .leading)
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding()
                    .background(.blue.opacity(0.1))
                    .clipShape(.rect(cornerRadius: 8))
                }
                
                VStack(alignment: .leading) {
                    Text("Autocapitalization")
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    VStack {
                        VStack {
                            TextField("Username", text: $username)
                                .textInputAutocapitalization(.characters)
                        }
                        .padding()
                        .background(Color.white)
                        .clipShape(.rect(cornerRadius: 8))
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding()
                    .background(.blue.opacity(0.1))
                    .clipShape(.rect(cornerRadius: 8))
                }
                
                VStack(alignment: .leading) {
                    Text("Baseline Offset")
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    VStack {
                        HStack {
                            Text("Before")
                                .background(.red)
                                .offset(y: 15)

                            Text("After")
                                .offset(y: 15)
                                .background(.red)
                        }
                        .padding()
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding()
                    .background(.blue.opacity(0.1))
                    .clipShape(.rect(cornerRadius: 8))
                }
                
                VStack(alignment: .leading) {
                    Text("Bold")
                        .foregroundColor(.blue)
                    VStack {
                        Text("I will be bold text!")
                            .bold()
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding()
                    .background(.blue.opacity(0.1))
                    .clipShape(.rect(cornerRadius: 8))
                }
                
                VStack(alignment: .leading) {
                    Text("Dynamic Type")
                        .foregroundColor(.blue)
                    VStack {
                        Text("This will stay small")
                            .dynamicTypeSize(.small)
                        Text("This won't go above large")
                            .dynamicTypeSize(.large)
                        Text("This will scale within a range")
                            .dynamicTypeSize(DynamicTypeSize.large...DynamicTypeSize.xxxLarge)
                        Text("This will scale to any size")
                            .dynamicTypeSize(.xxLarge)
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding()
                    .background(.blue.opacity(0.1))
                    .clipShape(.rect(cornerRadius: 8))
                }
                
                VStack(alignment: .leading) {
                    Text("Flips for Right to Left")
                        .foregroundColor(.blue)
                    VStack {
                        Text("Flips for Right to Left")
                            .flipsForRightToLeftLayoutDirection(true)
                            .environment(\.layoutDirection, .rightToLeft)
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding()
                    .background(.blue.opacity(0.1))
                    .clipShape(.rect(cornerRadius: 8))
                }
                
                VStack(alignment: .leading) {
                    Text("Font")
                        .foregroundColor(.blue)
                    VStack {
                        Text("This Scales")
                            .font(.custom("Georgia", size: 18))
                        
                        Text("This is Fixed")
                            .font(.custom("Georgia", fixedSize: 24))
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding()
                    .background(.blue.opacity(0.1))
                    .clipShape(.rect(cornerRadius: 8))
                }
                
                VStack(alignment: .leading) {
                    Text("Font Weight")
                        .foregroundColor(.blue)
                    VStack {
                        Text("Font Weight: Bold")
                            .fontWeight(.bold)
                        Text("Font Weight: Medium")
                            .fontWeight(.medium)
                        Text("Font Weight: regular")
                            .fontWeight(.regular)
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding()
                    .background(.blue.opacity(0.1))
                    .clipShape(.rect(cornerRadius: 8))
                }
                
                VStack(alignment: .leading) {
                    Text("Italic")
                        .foregroundColor(.blue)
                    VStack {
                        Text("This article is about quoting text and speech")
                            .italic()
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding()
                    .background(.blue.opacity(0.1))
                    .clipShape(.rect(cornerRadius: 8))
                }
                
                VStack(alignment: .leading) {
                    Text("Kerning")
                        .foregroundColor(.blue)
                    VStack {
                        Text("ffi")
                            .font(.custom("AmericanTypewriter", size: 72))
                            .kerning(amount)
                        Text("ffi")
                            .font(.custom("AmericanTypewriter", size: 72))
                            .tracking(amount)
                        
                        Slider(value: $amount, in: 0...100) {
                            Text("Adjust the amount of spacing")
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding()
                    .background(.blue.opacity(0.1))
                    .clipShape(.rect(cornerRadius: 8))
                }
                
                VStack(alignment: .leading) {
                    Text("Keyboard Type")
                        .foregroundColor(.blue)
                    VStack {
                        VStack {
                            TextField("Email", text: $email)
                                .keyboardType(.emailAddress)
                        }
                        .padding()
                        .background(Color.white)
                        .clipShape(.rect(cornerRadius: 8))
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding()
                    .background(.blue.opacity(0.1))
                    .clipShape(.rect(cornerRadius: 8))
                }
                
                VStack(alignment: .leading) {
                    Text("Line Limit")
                        .foregroundColor(.blue)
                    VStack {
                        Text("Sets the maximum number of lines that text can occupy in this view. This is a long string that demonstrates the effect of SwiftUI's lineLimit(:_) operator.")
                            .lineLimit(2)
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding()
                    .background(.blue.opacity(0.1))
                    .clipShape(.rect(cornerRadius: 8))
                }
                
                VStack(alignment: .leading) {
                    Text("Line Spacing")
                        .foregroundColor(.blue)
                    VStack {
                        Text("Sets the amount of space between lines of text in this view. This is a string in a TextField with 10 point spacing applied between the bottom of one line and the top of the next.")
                            .lineSpacing(10)
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding()
                    .background(.blue.opacity(0.1))
                    .clipShape(.rect(cornerRadius: 8))
                }
                
                VStack(alignment: .leading) {
                    Text("Minimum Scale Factor")
                        .foregroundColor(.blue)
                    VStack {
                        Text("Sets the minimum amount that text in this view scales down to fit in the available space. This is a long label that will be scaled to fit:")
                                .lineLimit(1)
                                .minimumScaleFactor(0.5)
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding()
                    .background(.blue.opacity(0.1))
                    .clipShape(.rect(cornerRadius: 8))
                }
                
                VStack(alignment: .leading) {
                    Text("Monospaced")
                        .foregroundColor(.blue)
                    VStack {
                        Text("Monospaced")
                            .font(.system(.body, design: .monospaced))
                        Text("02:12:230")
                            .monospacedDigit()
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding()
                    .background(.blue.opacity(0.1))
                    .clipShape(.rect(cornerRadius: 8))
                }
                
                VStack(alignment: .leading) {
                    Text("Multiline Text Alignment")
                        .foregroundColor(.blue)
                    VStack {
                        Text("This is a block of text that shows up in a text element as multiple lines.\("\n") Here we have chosen to center this text.")
                            .multilineTextAlignment(.trailing)
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding()
                    .background(.blue.opacity(0.1))
                    .clipShape(.rect(cornerRadius: 8))
                }
                
                VStack(alignment: .leading) {
                    Text("Multiline Text Alignment")
                        .foregroundColor(.blue)
                    VStack {
                        TextEditor(text: $bio)
                            .replaceDisabled()
                            .frame(height: 140)
                            .background(.white)
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding()
                    .background(.blue.opacity(0.1))
                    .clipShape(.rect(cornerRadius: 8))
                }
                
                VStack(alignment: .leading) {
                    Text("Strikethrough")
                        .foregroundColor(.blue)
                    VStack {
                        Text("Strikethrough")
                            .strikethrough()
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding()
                    .background(.blue.opacity(0.1))
                    .clipShape(.rect(cornerRadius: 8))
                }
                
                VStack(alignment: .leading) {
                    Text("Text Case")
                        .foregroundColor(.blue)
                    VStack {
                        Text("Uppercase")
                            .textCase(.uppercase)
                        Text("Lowercase")
                            .textCase(.lowercase)
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding()
                    .background(.blue.opacity(0.1))
                    .clipShape(.rect(cornerRadius: 8))
                }
                
                VStack(alignment: .leading) {
                    Text("Text Case")
                        .foregroundColor(.blue)
                    VStack {
                        Text("Uppercase")
                            .textCase(.uppercase)
                        Text("Lowercase")
                            .textCase(.lowercase)
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding()
                    .background(.blue.opacity(0.1))
                    .clipShape(.rect(cornerRadius: 8))
                }
                
                VStack(alignment: .leading) {
                    Text("Tracking")
                        .foregroundColor(.blue)
                    VStack {
                        Text("ABCDEF").tracking(-3)
                        Text("ABCDEF")
                        Text("ABCDEF").tracking(3)
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding()
                    .background(.blue.opacity(0.1))
                    .clipShape(.rect(cornerRadius: 8))
                }
                
                VStack(alignment: .leading) {
                    Text("Underline")
                        .foregroundColor(.blue)
                    VStack {
                        Text("Underline")
                            .underline()
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding()
                    .background(.blue.opacity(0.1))
                    .clipShape(.rect(cornerRadius: 8))
                }
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/actionsheet")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Text Layout")
    }
}

#Preview {
    TextLayoutView()
}
