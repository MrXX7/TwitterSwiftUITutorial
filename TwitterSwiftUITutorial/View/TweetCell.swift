//
//  TweetCell.swift
//  TwitterSwiftUITutorial
//
//  Created by Oncu Ohancan on 10.04.2022.
//

import SwiftUI
import Kingfisher

struct TweetCell: View {
    let tweet: Tweet
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top, spacing: 12) {
                KFImage(URL(string: tweet.profileImageUrl))
                    .resizable()
                    .scaledToFit()
                    .clipped()
                    .frame(width: 56, height: 56)
                    .cornerRadius(56 / 2)
                    .padding(.leading)
                
                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                        Text(tweet.fullname)
                            .font(.system(size: 14))
                            .fontWeight(.semibold)
                            .foregroundColor(.black)
                    
                        Text("@\(tweet.username) ")
                            .foregroundColor(.gray)
                        
                        Text("2w")
                            .foregroundColor(.gray)
                    }
                    Text(tweet.caption)
                        .foregroundColor(.black)
                }
            }
                .padding(.bottom)
                .padding(.trailing)
            
            TweetActionsView()
            
            Divider()
                       }
        .padding(.leading, -16)
                       }
                       }
//struct TweetCell_Previews: PreviewProvider {
//    static var previews: some View {
//        TweetCell()
//    }
//}
