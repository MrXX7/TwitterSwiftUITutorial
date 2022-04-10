//
//  FeedView.swift
//  TwitterSwiftUITutorial
//
//  Created by Oncu Ohancan on 10.04.2022.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView {
                
            }
            Button(action: {}, label: {
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
    }
}
                   }
struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
