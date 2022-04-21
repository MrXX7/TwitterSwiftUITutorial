//
//  FeedView.swift
//  TwitterSwiftUITutorial
//
//  Created by Oncu Ohancan on 10.04.2022.
//

import SwiftUI

struct FeedView: View {
    
    @State var isShowingNewTweetView = false
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView {
                VStack {
                    ForEach(0..<9) { _ in
                        TweetCell()
                    }
                } .padding()
            }
            Button(action: {
                isShowingNewTweetView.toggle() }, label: {
            Image("Tweet")
                .resizable()
                .renderingMode(.template)
                .frame(width: 32, height: 32)
                .padding()
        })
        .background(Color(.systemBlue))
        .foregroundColor(.white)
        .clipShape(Circle())
        .padding()
            
        .fullScreenCover(isPresented: $isShowingNewTweetView) {
            NewTweetView(isPresented: $isShowingNewTweetView)
        }
    }
}
                   }
struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
