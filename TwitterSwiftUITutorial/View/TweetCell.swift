//
//  TweetCell.swift
//  TwitterSwiftUITutorial
//
//  Created by Oncu Ohancan on 10.04.2022.
//

import SwiftUI

struct TweetCell: View {
    var body: some View {
        VStack {
            HStack(alignment: .top) {
             Image("batman")
                    .resizable()
                    .scaledToFit()
                    .clipped()
                    .frame(width: 56, height: 56)
                    .cornerRadius(56 / 2)
                    .padding(.leading)
                
                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                    Text("Bruce Wayne")
                            .font(.system(size: 14))
                            .fontWeight(.semibold)
                    
                    Text("@batman")
                            .foregroundColor(.gray)
                        
                        Text("2w")
                            .foregroundColor(.gray)
                    }
                    Text("I am the night, I am Batman")
                }
            }
                .padding(.bottom)
                .padding(.trailing)
            HStack {
                Button(action: {}, label: {
                    Image(systemName: "bubble.left")
                        .font(.system(size: 16))
                        .frame(width: 32, height: 32)
                })
                Spacer()
                Button(action: {}, label: {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.system(size: 16))
                        .frame(width: 32, height: 32)
                })
                Spacer()
                Button(action: {}, label: {
                    Image(systemName: "heart")
                        .font(.system(size: 16))
                        .frame(width: 32, height: 32)
                })
                Spacer()
                Button(action: {}, label: {
                    Image(systemName: "bookmark")
                        .font(.system(size: 16))
                        .frame(width: 32, height: 32)
                })
            }
            .foregroundColor(.gray)
            .padding(.horizontal)
            
            Divider()
                       }
                       }
                       }
struct TweetCell_Previews: PreviewProvider {
    static var previews: some View {
        TweetCell()
    }
}
