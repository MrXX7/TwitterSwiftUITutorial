//
//  Constants.swift
//  TwitterSwiftUITutorial
//
//  Created by Oncu Ohancan on 19.04.2022.
//

import Firebase

let COLLECTION_USERS = Firestore.firestore().collection("users")
let COLLECTION_FOLLOWERS = Firestore.firestore().collection("followers")
let COLLECTION_FOLLOWING = Firestore.firestore().collection("following")

