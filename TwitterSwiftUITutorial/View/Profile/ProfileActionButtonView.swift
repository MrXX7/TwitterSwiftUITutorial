//
//  ProfileActionButtonView.swift
//  TwitterSwiftUITutorial
//
//  Created by Oncu Ohancan on 12.04.2022.
//

import SwiftUI

struct ProfileActionButtonView: View {
    @ObservedObject var viewModel: ProfileViewModel
    
    var body: some View {
        if viewModel.user.isCurrentUser {
                Button(action: {}, label: {
                    Text("Edit Profile")
                        .frame(width: 360, height: 40)
                        .background(.blue)
                        .foregroundColor(.white)
                })
                .cornerRadius(20)
        } else {
            HStack {
            Button(action: {
                viewModel.user.isFollowed ? viewModel.unfollow() : viewModel.follow()
            }, label: {
                Text(viewModel.user.isFollowed ? "Following" : "Follow")
                    .frame(width: 180, height: 40)
                    .background(.blue)
                    .foregroundColor(.white)
            })
            .cornerRadius(20)
           
                NavigationLink(destination: ChatView(user: viewModel.user), label: {
                        Text("Message")
                            .frame(width: 180, height: 40)
                            .background(.purple)
                            .foregroundColor(.white)
                    })
            .cornerRadius(20)
        }
        }
}
}
