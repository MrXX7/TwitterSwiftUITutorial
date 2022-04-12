//
//  ProfileActionButtonView.swift
//  TwitterSwiftUITutorial
//
//  Created by Oncu Ohancan on 12.04.2022.
//

import SwiftUI

struct ProfileActionButtonView: View {
    let isCurrentuser: Bool
    
    var body: some View {
        if isCurrentuser {
                Button(action: {}, label: {
                    Text("Edit Profile")
                        .frame(width: 360, height: 40)
                        .background(.blue)
                        .foregroundColor(.white)
                })
                .cornerRadius(20)
        } else {
            HStack {
            Button(action: {}, label: {
                Text("Follow")
                    .frame(width: 180, height: 40)
                    .background(.blue)
                    .foregroundColor(.white)
            })
            .cornerRadius(20)
            
            Button(action: {}, label: {
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
struct ProfileActionButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileActionButtonView(isCurrentuser: false)
    }
}
