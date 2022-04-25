//
//  UserProfileView.swift
//  TwitterSwiftUITutorial
//
//  Created by Oncu Ohancan on 12.04.2022.
//

import SwiftUI

struct UserProfileView: View {

    let user: User
    @ObservedObject var viewModel: ProfileViewModel
    
    init(user: User) {
        self.user = user
        self.viewModel = ProfileViewModel(user: user)
    }
    
    var body: some View {
        ScrollView {
            VStack {
                ProfileHeaderView(isFollowed: $viewModel.isFollowed, viewModel: viewModel)
                    .padding()
                
                ForEach(viewModel.likedTweets) { tweet in
                    TweetCell(tweet: tweet)
                        .padding()
                }
                }
            .navigationTitle("batman")
        }
    }
}
