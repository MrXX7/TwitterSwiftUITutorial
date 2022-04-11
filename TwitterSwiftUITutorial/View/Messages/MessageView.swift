//
//  MessageView.swift
//  TwitterSwiftUITutorial
//
//  Created by Oncu Ohancan on 11.04.2022.
//

import SwiftUI

struct MessageView: View {
    let message: MockMessage
    var body: some View {
        HStack {
            if message.isCurrentUser {
            Spacer()
            Text(message.messageText)
            .padding()
            .background(Color.blue)
            .clipShape(ChatBubble(isFromCurrentUser: false))
            .foregroundColor(.white)
            .padding(.horizontal)
            } else {
            HStack(alignment: .bottom) {
            Image("spiderman")
            .resizable()
            .scaledToFit()
            .frame(width: 40, height: 40)
            .clipShape(Circle())
                
            Text(message.messageText)
            .padding()
            .background(Color(.systemGray5))
            .clipShape(ChatBubble(isFromCurrentUser: false))
            .foregroundColor(.black)
            .padding(.horizontal)
            }
            .padding(.horizontal)
             Spacer()
             }
        }
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView(message: MOCK_MESSAGES[0])
    }
}
