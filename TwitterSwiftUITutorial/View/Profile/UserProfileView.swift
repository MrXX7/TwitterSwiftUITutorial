//
//  UserProfileView.swift
//  TwitterSwiftUITutorial
//
//  Created by Oncu Ohancan on 12.04.2022.
//

import SwiftUI

struct UserProfileView: View {
//    let user: User
//    @ObservedObject var viewModel: ProfileViewModel
//    @State var selectedFilter: TweetFilterOptions = .tweets
//init(user: User) {
//    self.user = user
//    self.viewModel = ProfileViewModel(user: user)
//}
    
    var body: some View {
        ScrollView {
            VStack {
                Text("merhaba")
//                ProfileHeaderView(viewModel: viewModel)
//                    .padding()
//
//                FilterButtonView(selectedOption: $selectedFilter)
//                    .padding()
//
//                ForEach(0..<9) { tweet in
//                    TweetCell()
                }
            }
        }
}
//                ForEach(viewModels.tweets(forFilter: selectedFilter)) {
//                    tweet in TweetCell(tweet: tweet)
//                        .padding()
//            .navigationTitle(user.username)
struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView()
    }
}

