//
//  UserProfileView.swift
//  TwitterSwiftUITutorial
//
//  Created by Oncu Ohancan on 12.04.2022.
//

import SwiftUI

struct UserProfileView: View {
    var body: some View {
        HStack {
            VStack {
                ProfileHeaderView()
                    .padding()
            }
            .navigationTitle("batman")
        }
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView()
    }
}
