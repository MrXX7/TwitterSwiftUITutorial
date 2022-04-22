//
//  Tweet.swift
//  TwitterSwiftUITutorial
//
//  Created by Oncu Ohancan on 22.04.2022.
//

import Firebase

struct Tweet: Identifiable {
    let id: String
    let username: String
    let profileImageUrl: String
    let fullname: String
    let caption: String
    let likes: Int
    let uid: String
    let timestap: Timestamp
    
    init(dictionary: [String: Any]) {
        self.id = dictionary["id"] as? String ?? ""
        self.username = dictionary["username"] as? String ?? ""
        self.profileImageUrl = dictionary["profileImageUrl"] as? String ?? ""
        self.fullname = dictionary["fullname"] as? String ?? ""
        self.caption = dictionary["caption"] as? String ?? ""
        self.likes = dictionary["likes"] as? Int ?? 0
        self.uid = dictionary["uid"] as? String ?? ""
        self.timestap = dictionary["timestamp"] as? Timestamp ?? Timestamp(date: Date())
    }
}
