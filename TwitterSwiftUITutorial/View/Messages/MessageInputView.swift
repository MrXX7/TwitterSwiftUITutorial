//
//  MessageInputView.swift
//  TwitterSwiftUITutorial
//
//  Created by Oncu Ohancan on 11.04.2022.
//

import SwiftUI

struct MessageInputView: View {
    @Binding var messageText: String
    
    var action: () -> Void
    
    var body: some View {
        HStack {
            TextField("Message...", text: $messageText)
                .textFieldStyle(PlainTextFieldStyle())
                .frame(minHeight: 30)
            
            Button(action: action) {
                Text("Send")
                    .bold()
                    .foregroundColor(.blue)
            }
        }
    }
}
