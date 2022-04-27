//
//  MessageView.swift
//  TwitterSwiftUITutorial
//
//  Created by Oncu Ohancan on 11.04.2022.
//

import SwiftUI
import Kingfisher

struct MessageView: View {
    let message: Message
    
    var body: some View {
        HStack {
            if message.isFromCurrentUser {
            Spacer()
            Text(message.text)
            .padding()
            .background(Color.blue)
            .clipShape(ChatBubble(isFromCurrentUser: false))
            .foregroundColor(.white)
            .padding(.horizontal)
            .padding(.leading, 100)
            .padding(.trailing, 16)
            } else {
            HStack(alignment: .bottom) {
                KFImage(URL(string: message.user.profileImageUrl))
            .resizable()
            .scaledToFit()
            .frame(width: 40, height: 40)
            .clipShape(Circle())
                
            Text(message.text)
            .padding()
            .background(Color(.systemGray5))
            .clipShape(ChatBubble(isFromCurrentUser: false))
            .foregroundColor(.black)
            
            }
            .padding(.horizontal)
            .padding(.trailing, 100)
            .padding(.leading, 16)
             Spacer()
             }
        }
    }
}
